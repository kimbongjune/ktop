package net.ktop.ktop.module.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class ErrorController {

    @GetMapping("/403")
    public String error403() {
        return "/error/403";  // /WEB-INF/views/error/403.jsp
    }

    @GetMapping("/404")
    public String error404() {
        return "/error/404";  // /WEB-INF/views/error/404.jsp
    }

    @GetMapping("/500")
    public String error500() {
        return "/error/500";  // /WEB-INF/views/error/500.jsp
    }
    
    @GetMapping("/csrf")
    public String securityError() {
        return "/error/csrf";  // 보안 오류 페이지 (CSRF, 인증 실패, 세션 만료 등)
    }
}