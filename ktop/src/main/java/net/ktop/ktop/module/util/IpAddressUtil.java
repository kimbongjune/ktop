package net.ktop.ktop.module.util;

import javax.servlet.http.HttpServletRequest;

/**
 * IP 주소 추출 유틸리티
 */
public class IpAddressUtil {
    
    /**
     * 클라이언트 IP 주소 추출
     * 프록시, 로드밸런서 등을 고려하여 실제 클라이언트 IP를 추출
     */
    public static String getClientIpAddress(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        
        // X-Forwarded-For가 여러 IP를 포함할 경우 첫 번째 IP 사용
        if (ip != null && ip.contains(",")) {
            ip = ip.split(",")[0].trim();
        }
        
        return ip != null ? ip : "Unknown";
    }
}
