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
import org.springframework.security.web.csrf.InvalidCsrfTokenException;
import org.springframework.security.web.csrf.MissingCsrfTokenException;
import org.springframework.security.web.csrf.CsrfException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.AccountExpiredException;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;
import org.springframework.web.HttpRequestMethodNotSupportedException;

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
    
    @ExceptionHandler({
        InvalidCsrfTokenException.class, 
        MissingCsrfTokenException.class, 
        CsrfException.class,
        BadCredentialsException.class,
        AccountExpiredException.class,
        CredentialsExpiredException.class,
        DisabledException.class,
        LockedException.class,
        InsufficientAuthenticationException.class,
        AuthenticationCredentialsNotFoundException.class,
        SessionAuthenticationException.class,
        HttpRequestMethodNotSupportedException.class
    })
    public String handleSecurityException() {
        // 보안 관련 오류(CSRF, 토큰 탈취, 인증 실패, 405 에러 등) 시 비정상 접근 페이지로 이동
        return "error/csrf";
    }
}