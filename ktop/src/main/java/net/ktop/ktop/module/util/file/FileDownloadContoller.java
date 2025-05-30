package net.ktop.ktop.module.util.file;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/download")
public class FileDownloadContoller {
	
	private final FileService fileService;
	private final ServletContext servletContext;

	@Autowired
	public FileDownloadContoller(FileService fileService, ServletContext servletContext) {
		this.fileService = fileService;
		this.servletContext = servletContext;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestParam("id") int fileId) {
		FileDto file = fileService.getFileById(fileId);
	    if (file == null) {
	        return ResponseEntity.notFound().build();
	    }

	    try {
	        // 업로드 시 사용한 것과 같은 방식으로 물리 경로 변환
	        String realPath = servletContext.getRealPath(file.getFilePath());
	        Path filePath = Paths.get(realPath).normalize();
	        Resource resource = new UrlResource(filePath.toUri());

	        if (!resource.exists()) {
	            return ResponseEntity.notFound().build();
	        }

	        String encodedName = URLEncoder.encode(file.getOriginalName(), "UTF-8").replaceAll("\\+", "%20");

	        return ResponseEntity.ok()
	                .contentType(MediaType.APPLICATION_OCTET_STREAM)
	                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + encodedName + "\"")
	                .body(resource);

	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	    }
	}
}
