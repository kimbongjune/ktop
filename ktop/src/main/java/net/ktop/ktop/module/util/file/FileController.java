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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.ktop.ktop.module.security.CustomUserDetails;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/file")
public class FileController {
	
	private final FileService fileService;
	private final ServletContext servletContext;
	
	@Value("${file.upload.path:/var/ktop/uploads}")
	private String uploadBasePath;

	@Autowired
	public FileController(FileService fileService, ServletContext servletContext) {
		this.fileService = fileService;
		this.servletContext = servletContext;
	}

	// 파일 다운로드
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(@RequestParam("id") int fileId) {
		FileDto file = fileService.getFileById(fileId);
		System.out.println(file);
	    if (file == null) {
	        return ResponseEntity.notFound().build();
	    }

	    try {
	        // filePath에서 파일명 추출 (/uploads/filename -> filename)
	        String fileName = file.getFilePath();
	        if (fileName.startsWith("/uploads/")) {
	            fileName = fileName.substring("/uploads/".length());
	        }
	        
	        // 영구 업로드 디렉토리에서 파일 찾기
	        Path filePath = Paths.get(uploadBasePath, fileName).normalize();
	        Resource resource = new UrlResource(filePath.toUri());

	        if (!resource.exists()) {
	            System.out.println("파일을 찾을 수 없음: " + filePath.toString());
	            return ResponseEntity.notFound().build();
	        }

	        String encodedName = URLEncoder.encode(file.getOriginalName(), "UTF-8").replaceAll("\\+", "%20");

	        return ResponseEntity.ok()
	                .contentType(MediaType.APPLICATION_OCTET_STREAM)
	                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + encodedName + "\"")
	                .body(resource);

	    } catch (Exception e) {
	        e.printStackTrace();
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	    }
	}
	
	// 에디터 이미지 업로드
	@RequestMapping(value="/upload/editor", method=RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String uploadEditorImage(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
		return request.getContextPath() + fileService.saveUploadedFile(file).getFilePath();
	}
	
	// 에디터 이미지 삭제
	@RequestMapping(value="/upload/editor", method=RequestMethod.DELETE)
	@ResponseBody
	public String deleteEditorImage(@RequestParam("filePath") String filePath, @AuthenticationPrincipal CustomUserDetails user) {
		// 보안: 로그인 사용자만 파일 삭제 가능
		if(user == null) {
			return "unauthorized";
		}
		
		if (filePath == null || filePath.trim().isEmpty()) {
	        return "invalid";
	    }

	    boolean result = fileService.deletePhysicalFile(filePath);
	    return result ? "success" : "not_found_or_fail";
	}
} 