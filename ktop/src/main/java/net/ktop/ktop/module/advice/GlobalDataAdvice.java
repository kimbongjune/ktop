package net.ktop.ktop.module.advice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import net.ktop.ktop.module.web.category.CategoryService;

@ControllerAdvice
public class GlobalDataAdvice {

    private final CategoryService categoryService;
    
    @Autowired
    public GlobalDataAdvice(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@ModelAttribute
    public void addHeaderData(Model model) {
        model.addAttribute("categoryList", categoryService.getAllCategory());
    }
	
	@ExceptionHandler(NumberFormatException.class)
    public String handleNumberFormatException(NumberFormatException ex) {
        return "error/404";
    }

    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity<?> handleDataIntegrityViolationException(DataIntegrityViolationException ex) {
        // FK 제약 등으로 삭제 불가 시 프론트에 JSON으로 에러 메시지 전달
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON_UTF8);
        return ResponseEntity.status(HttpStatus.CONFLICT).headers(headers).body("데이터 제약으로 인해 삭제할 수 없습니다.");
    }
}