package net.ktop.ktop.module.util.aspect;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.admin.site.history.SiteHistoryService;

/**
 * XML 기반 AOP를 위한 히스토리 로깅 Advice
 */
@Aspect
@Component
public class HistoryLogAdvice {
    
    private static final Logger logger = LoggerFactory.getLogger(HistoryLogAdvice.class);
    
    private final SiteHistoryService siteHistoryService;
    
    @Autowired
    public HistoryLogAdvice(SiteHistoryService siteHistoryService) {
        this.siteHistoryService = siteHistoryService;
    }
    
    /**
     * 회원가입 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.user.UserController.signupProcess(..))")
    public void logSignup(JoinPoint joinPoint) {
        logHistory("CREATE", "회원가입", joinPoint);
    }
    
    /**
     * 회원정보 수정 히스토리 기록 (POST 메서드만)
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.user.UserController.mypage(..))")
    public void logUserUpdate(JoinPoint joinPoint) {
        // POST 메서드인지 확인
        if (joinPoint.getArgs().length > 1) {
            logHistory("USER_UPDATE", "회원정보 수정", joinPoint);
        }
    }
    
    /**
     * 업체정보 수정 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.user.UserController.companyEdit(..))")
    public void logCompanyEdit(JoinPoint joinPoint) {
        logHistory("UPDATE", "업체정보 수정", joinPoint);
    }
    
    /**
     * 업체정보 등록 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.user.UserController.companyWrites(..))")
    public void logCompanyCreate(JoinPoint joinPoint) {
        logHistory("CREATE", "업체정보 등록", joinPoint);
    }
    
    /**
     * 파일 업로드 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.util.file.FileController.uploadEditorImage(..))")
    public void logFileUpload(JoinPoint joinPoint) {
        logHistory("FILE_UPLOAD", "에디터 이미지 업로드", joinPoint);
    }
    
    /**
     * 파일 삭제 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.util.file.FileController.deleteEditorImage(..))")
    public void logFileDelete(JoinPoint joinPoint) {
        logHistory("DELETE", "에디터 이미지 삭제", joinPoint);
    }
    
    /**
     * 공지사항 작성 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.NoticeController.noticeWrite(..))")
    public void logNoticeCreate(JoinPoint joinPoint) {
        logHistory("CREATE", "공지사항 작성", joinPoint);
    }
    
    /**
     * 공지사항 수정 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.NoticeController.noticeEdit(..))")
    public void logNoticeUpdate(JoinPoint joinPoint) {
        logHistory("UPDATE", "공지사항 수정", joinPoint);
    }
    
    /**
     * 공지사항 삭제 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.NoticeController.noticeDelete(..))")
    public void logNoticeDelete(JoinPoint joinPoint) {
        logHistory("DELETE", "공지사항 삭제", joinPoint);
    }
    
    /**
     * FAQ 작성 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.FaqController.faqWrite(..))")
    public void logFaqCreate(JoinPoint joinPoint) {
        logHistory("CREATE", "FAQ 작성", joinPoint);
    }
    
    /**
     * FAQ 수정 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.FaqController.faqEdit(..))")
    public void logFaqUpdate(JoinPoint joinPoint) {
        logHistory("UPDATE", "FAQ 수정", joinPoint);
    }
    
    /**
     * FAQ 삭제 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.FaqController.faqDelete(..))")
    public void logFaqDelete(JoinPoint joinPoint) {
        logHistory("DELETE", "FAQ 삭제", joinPoint);
    }
    
    /**
     * Q&A 작성 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.QnaController.qnaWrite(..))")
    public void logQnaCreate(JoinPoint joinPoint) {
        logHistory("CREATE", "Q&A 작성", joinPoint);
    }
    
    /**
     * Q&A 수정 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.QnaController.qnaEdit(..))")
    public void logQnaUpdate(JoinPoint joinPoint) {
        logHistory("UPDATE", "Q&A 수정", joinPoint);
    }
    
    /**
     * Q&A 삭제 히스토리 기록
     */
    @AfterReturning("execution(* net.ktop.ktop.module.web.notice.QnaController.qnaDelete(..))")
    public void logQnaDelete(JoinPoint joinPoint) {
        logHistory("DELETE", "Q&A 삭제", joinPoint);
    }
    
    /**
     * 공통 히스토리 기록 메서드
     */
    private void logHistory(String type, String description, JoinPoint joinPoint) {
        try {
            // 현재 인증 정보 가져오기
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            String userId = "anonymous";
            
            if (authentication != null && authentication.getPrincipal() instanceof CustomUserDetails) {
                CustomUserDetails userDetails = (CustomUserDetails) authentication.getPrincipal();
                userId = userDetails.getUsername();
            }
            
            // IP 주소 가져오기
            String ipAddress = getClientIpAddress();
            
            // 파라미터 정보 생성
            String parameters = buildParametersString(joinPoint);
            
            // 히스토리 기록
            siteHistoryService.logHistory(userId, type, ipAddress, parameters);
            
            logger.info("히스토리 기록 완료: type=" + type + ", userId=" + userId + ", description=" + description);
            
        } catch (Exception e) {
            logger.error("히스토리 기록 중 오류 발생", e);
        }
    }
    
    /**
     * 클라이언트 IP 주소 추출
     */
    private String getClientIpAddress() {
        try {
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            if (attributes != null) {
                HttpServletRequest request = attributes.getRequest();
                
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
        } catch (Exception e) {
            logger.warn("IP 주소 추출 중 오류", e);
        }
        
        return "unknown";
    }
    
    /**
     * 메서드 파라미터 정보를 문자열로 변환
     */
    private String buildParametersString(JoinPoint joinPoint) {
        try {
            Object[] args = joinPoint.getArgs();
            
            StringBuilder sb = new StringBuilder();
            sb.append("메서드: ").append(joinPoint.getSignature().getName()).append(" | ");
            
            for (int i = 0; i < args.length; i++) {
                if (args[i] != null) {
                    String paramValue = args[i].toString();
                    
                    // 민감한 정보는 마스킹 처리
                    if (paramValue.toLowerCase().contains("password") || 
                        paramValue.toLowerCase().contains("pwd") ||
                        paramValue.toLowerCase().contains("pass")) {
                        paramValue = "***";
                    }
                    
                    sb.append("param").append(i).append("=").append(paramValue);
                    if (i < args.length - 1) {
                        sb.append(", ");
                    }
                }
            }
            
            return sb.toString();
        } catch (Exception e) {
            logger.warn("파라미터 정보 생성 중 오류", e);
            return "파라미터 정보 생성 실패";
        }
    }
}
