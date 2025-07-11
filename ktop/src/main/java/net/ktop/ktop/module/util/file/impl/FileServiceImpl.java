package net.ktop.ktop.module.util.file.impl;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.Normalizer;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileRepository;
import net.ktop.ktop.module.util.file.FileService;

@Service
public class FileServiceImpl implements FileService {
	
	private final FileRepository fileRepository;
	private final ServletContext servletContext;
	
	@Value("${file.upload.path:/var/ktop/uploads}")
	private String uploadBasePath;
	
	@Autowired
	public FileServiceImpl(FileRepository fileRepository, ServletContext servletContext) {
		this.fileRepository = fileRepository;
		this.servletContext = servletContext;
	}

	@Override
	public void saveFile(FileDto fileDto) {
		fileRepository.saveFile(fileDto);
	}

	@Override
	public FileDto saveUploadedFile(MultipartFile file) throws IOException {
	    if (file == null || file.isEmpty()) {
	    	System.out.println("파일이 null이거나 비어있음");
	    	return null;
	    }

	    // 영구적인 업로드 경로 사용 (톰캣 재시작 시에도 유지됨)
	    File uploadDir = new File(uploadBasePath);
	    if (!uploadDir.exists()) {
	        boolean created = uploadDir.mkdirs();
	        System.out.println("업로드 디렉토리 생성: " + uploadBasePath + " (성공: " + created + ")");
	    }
	    System.out.println("업로드 경로: " + uploadBasePath);

	    String originalName = file.getOriginalFilename();
	    String ext = "";
	    if (originalName != null && originalName.contains(".")) {
	        ext = originalName.substring(originalName.lastIndexOf("."));
	    }
	    String savedName = UUID.randomUUID().toString() + "_" + System.currentTimeMillis() + ext;

	    System.out.println("원본 파일명: " + originalName + ", 저장 파일명: " + savedName);

	    File saveFile = new File(uploadDir, savedName);
	    file.transferTo(saveFile);
	    System.out.println("파일 물리적 저장 완료: " + saveFile.getAbsolutePath());

	    FileDto dto = new FileDto();
	    dto.setOriginalName(originalName); // 원본 이름
	    dto.setFileName(savedName);        // 서버에 저장된 이름
	    dto.setFilePath("/uploads" + "/" + savedName);
	    dto.setMimeType(file.getContentType());
	    dto.setFileSize(file.getSize());

	    System.out.println("FileDto 생성 완료 (DB 저장 전): " + dto);
	    this.saveFile(dto);
	    System.out.println("FileDto DB 저장 완료 (ID: " + dto.getId() + ")");

	    return dto;
	}

	@Override
	public boolean deletePhysicalFile(String filePath) {
	    // filePath가 /uploads/filename 형태인 경우 파일명만 추출
	    String fileName = filePath;
	    if (filePath.startsWith("/uploads/")) {
	        fileName = filePath.substring("/uploads/".length());
	    }
	    
	    File file = new File(uploadBasePath, fileName);
	    return file.exists() && file.delete();
	}

	@Override
	public FileDto getFileById(int id) {
		return fileRepository.getFileById(id);
	}

}
