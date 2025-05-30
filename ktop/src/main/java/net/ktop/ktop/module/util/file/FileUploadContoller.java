package net.ktop.ktop.module.util.file;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/upload")
public class FileUploadContoller {
	
	private final FileService fileService;
	
	@Autowired	
	public FileUploadContoller(FileService fileService) {
		this.fileService = fileService;
	}
	
	@RequestMapping(value="/editor", method=RequestMethod.POST)
	@ResponseBody
	public String uploadEditorImage(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
		return request.getContextPath() + fileService.saveUploadedFile(file).getFilePath();
	}
	
	@RequestMapping(value="/editor", method=RequestMethod.DELETE)
	@ResponseBody
	public String deleteEditorImage(@RequestParam("filePath") String filePath) {
		if (filePath == null || filePath.trim().isEmpty()) {
	        return "invalid";
	    }

	    boolean result = fileService.deletePhysicalFile(filePath);
	    return result ? "success" : "not_found_or_fail";
	}

}
