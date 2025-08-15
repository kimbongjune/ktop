package net.ktop.ktop.module.util;

import org.springframework.stereotype.Component;

/**
 * User-Agent 파싱 유틸리티
 */
@Component
public class UserAgentParser {
    
    /**
     * 브라우저 정보 추출
     */
    public String parseBrowser(String userAgent) {
        if (userAgent == null || userAgent.isEmpty()) {
            return "Unknown";
        }
        
        String ua = userAgent.toLowerCase();
        
        // Edge (Chromium 기반)
        if (ua.contains("edg/")) {
            return "Edge";
        }
        // Chrome
        else if (ua.contains("chrome") && !ua.contains("chromium")) {
            return "Chrome";
        }
        // Firefox
        else if (ua.contains("firefox")) {
            return "Firefox";
        }
        // Safari (Chrome이 아닌 경우)
        else if (ua.contains("safari") && !ua.contains("chrome")) {
            return "Safari";
        }
        // Opera
        else if (ua.contains("opera") || ua.contains("opr/")) {
            return "Opera";
        }
        // Internet Explorer
        else if (ua.contains("msie") || ua.contains("trident")) {
            return "Internet Explorer";
        }
        // 기타 모바일 브라우저
        else if (ua.contains("mobile")) {
            return "Mobile Browser";
        }
        else {
            return "Unknown";
        }
    }
    
    /**
     * OS 정보 추출
     */
    public String parseOs(String userAgent) {
        if (userAgent == null || userAgent.isEmpty()) {
            return "Unknown";
        }
        
        String ua = userAgent.toLowerCase();
        
        // Windows
        if (ua.contains("windows")) {
            if (ua.contains("windows nt 10.0")) {
                return "Win10";
            } else if (ua.contains("windows nt 6.3")) {
                return "Win8.1";
            } else if (ua.contains("windows nt 6.2")) {
                return "Win8";
            } else if (ua.contains("windows nt 6.1")) {
                return "Win7";
            } else if (ua.contains("windows nt 6.0")) {
                return "WinVista";
            } else if (ua.contains("windows nt 5.1")) {
                return "WinXP";
            } else {
                return "Windows";
            }
        }
        // macOS
        else if (ua.contains("mac os x")) {
            if (ua.contains("iphone")) {
                return "iPhone";
            } else if (ua.contains("ipad")) {
                return "iPad";
            } else {
                return "Mac";
            }
        }
        // Android
        else if (ua.contains("android")) {
            return "Android";
        }
        // iOS
        else if (ua.contains("iphone") || ua.contains("ipad") || ua.contains("ipod")) {
            if (ua.contains("iphone")) {
                return "iPhone";
            } else if (ua.contains("ipad")) {
                return "iPad";
            } else {
                return "iOS";
            }
        }
        // Linux
        else if (ua.contains("linux")) {
            return "Linux";
        }
        // 기타
        else {
            return "Unknown";
        }
    }
    
    /**
     * 도메인 타입 (PC/모바일) 구분
     */
    public String parseDomainType(String userAgent) {
        if (userAgent == null || userAgent.isEmpty()) {
            return "PC";
        }
        
        String ua = userAgent.toLowerCase();
        
        // 모바일 기기 체크
        if (ua.contains("mobile") || 
            ua.contains("android") || 
            ua.contains("iphone") || 
            ua.contains("ipad") || 
            ua.contains("blackberry") || 
            ua.contains("windows phone")) {
            return "Mobile";
        } else {
            return "PC";
        }
    }
    
    /**
     * 모든 정보를 한번에 파싱
     */
    public UserAgentInfo parseUserAgent(String userAgent) {
        UserAgentInfo info = new UserAgentInfo();
        info.setBrowser(parseBrowser(userAgent));
        info.setOs(parseOs(userAgent));
        info.setDomainType(parseDomainType(userAgent));
        return info;
    }
    
    /**
     * User-Agent 정보를 담는 내부 클래스
     */
    public static class UserAgentInfo {
        private String browser;
        private String os;
        private String domainType;
        
        public String getBrowser() {
            return browser;
        }
        
        public void setBrowser(String browser) {
            this.browser = browser;
        }
        
        public String getOs() {
            return os;
        }
        
        public void setOs(String os) {
            this.os = os;
        }
        
        public String getDomainType() {
            return domainType;
        }
        
        public void setDomainType(String domainType) {
            this.domainType = domainType;
        }
    }
}
