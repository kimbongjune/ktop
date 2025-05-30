package net.ktop.ktop.module.util.file.impl;

import java.io.File;
import java.io.IOException;
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
	    if (file == null || file.isEmpty()) return null;

	    String uploadPath = servletContext.getRealPath("/uploads");
	    File dir = new File(uploadPath);
	    if (!dir.exists()) {
	        dir.mkdirs();
	    }

	    String originalName = file.getOriginalFilename();
	    String savedName = UUID.randomUUID() + "_" + originalName;
	    File saveFile = new File(dir, savedName);
	    file.transferTo(saveFile);

	    FileDto dto = new FileDto();
	    dto.setOriginalName(originalName);
	    dto.setFileName(savedName);
	    dto.setFilePath("/uploads" + "/" + savedName);
	    dto.setMimeType(file.getContentType());
	    dto.setFileSize(file.getSize());
	    
	    this.saveFile(dto);

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
