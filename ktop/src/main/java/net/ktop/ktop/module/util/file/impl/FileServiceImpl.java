package net.ktop.ktop.module.util.file.impl;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.Normalizer;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileRepository;
import net.ktop.ktop.module.util.file.FileService;

@Service
public class FileServiceImpl implements FileService {
	
	private final FileRepository fileRepository;
	private final ServletContext servletContext;
	
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

	    String uploadPath = servletContext.getRealPath("/uploads");
	    System.out.println("업로드 경로: " + uploadPath);
	    File dir = new File(uploadPath);
	    if (!dir.exists()) {
	        System.out.println("업로드 디렉토리 생성: " + dir.mkdirs());
	    }

	    String originalName = file.getOriginalFilename();
		String normalizedName = Normalizer.normalize(originalName, Normalizer.Form.NFC);
		String savedName = UUID.randomUUID().toString() + "_" + normalizedName;
		
		System.out.println("원본 파일명: " + originalName + ", 저장 파일명: " + savedName);
		
	    File saveFile = new File(dir, savedName);
	    file.transferTo(saveFile);
	    System.out.println("파일 물리적 저장 완료: " + saveFile.getAbsolutePath());

	    FileDto dto = new FileDto();
	    dto.setOriginalName(originalName);
	    dto.setFileName(savedName);
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
	    String contextPath = servletContext.getContextPath();

	    if (filePath.startsWith(contextPath)) {
	        filePath = filePath.substring(contextPath.length());
	    }

	    String realPath = servletContext.getRealPath(filePath);
	    File file = new File(realPath);

	    return file.exists() && file.delete();
	}

	@Override
	public FileDto getFileById(int id) {
		return fileRepository.getFileById(id);
	}

}
