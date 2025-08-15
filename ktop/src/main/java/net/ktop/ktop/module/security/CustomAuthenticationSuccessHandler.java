package net.ktop.ktop.module.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import net.ktop.ktop.module.web.admin.site.history.SiteHistoryService;

/**
 * 로그인 성공 시 히스토리를 기록하는 핸들러
 */
@Component
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    
    private static final Logger logger = LoggerFactory.getLogger(CustomAuthenticationSuccessHandler.class);
    
    private final SiteHistoryService siteHistoryService;
    
    @Autowired
    public CustomAuthenticationSuccessHandler(SiteHistoryService siteHistoryService) {
        this.siteHistoryService = siteHistoryService;
    }
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {
        
        try {
            // 로그인한 사용자 정보 가져오기
            String userId = authentication.getName();
            
            // IP 주소 가져오기
            String ipAddress = getClientIpAddress(request);
            
            // 히스토리 기록
            siteHistoryService.logHistory(userId, "LOGIN", ipAddress, "로그인 성공");
            
            logger.info("로그인 히스토리 기록 완료: userId={}, ip={}", userId, ipAddress);
            
        } catch (Exception e) {
            logger.error("로그인 히스토리 기록 중 오류 발생", e);
        }
        
        // 기본 리다이렉트 처리
        response.sendRedirect("/");
    }
    
    /**
     * 클라이언트 IP 주소 추출
     */
    private String getClientIpAddress(HttpServletRequest request) {
        String xForwardedFor = request.getHeader("X-Forwarded-For");
        if (xForwardedFor != null && !xForwardedFor.isEmpty() && !"unknown".equalsIgnoreCase(xForwardedFor)) {
            return xForwardedFor.split(",")[0].trim();
        }
        
        String xRealIp = request.getHeader("X-Real-IP");
        if (xRealIp != null && !xRealIp.isEmpty() && !"unknown".equalsIgnoreCase(xRealIp)) {
            return xRealIp;
        }
        
        return request.getRemoteAddr();
    }
}
