package net.ktop.ktop.module.util.file;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {
	void saveFile(FileDto fileDto);
	
	FileDto saveUploadedFile(MultipartFile file) throws IOException;
	
	boolean deletePhysicalFile(String file);
	
	FileDto getFileById(int id);
}
