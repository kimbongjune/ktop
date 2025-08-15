package net.ktop.ktop.module.util.aspect;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import net.ktop.ktop.module.util.IpAddressUtil;
import net.ktop.ktop.module.util.UserAgentParser;
import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsDto;
import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsService;

/**
 * 방문자 로그 수집 AOP Advice
 */
public class VisitorLogAdvice {
    
    private static final Logger logger = LoggerFactory.getLogger(VisitorLogAdvice.class);
    
    @Autowired
    private VisitorStatisticsService visitorStatisticsService;
    
    @Autowired
    private UserAgentParser userAgentParser;
    
    /**
     * 방문자 로그 수집 및 저장
     */
    public void collectVisitorLog() {
        try {
            ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            if (attributes == null) {
                return;
            }
            
            HttpServletRequest request = attributes.getRequest();
            
            // 현재 시간 정보
            LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            
            // 방문자 정보 수집
            String ipAddress = IpAddressUtil.getClientIpAddress(request);
            String userAgent = request.getHeader("User-Agent");
            String referer = request.getHeader("Referer");
            String pageUrl = request.getRequestURI();
            
            // User-Agent가 null이면 제외
            if (userAgent == null) {
                return;
            }
            
            // User-Agent 파싱
            UserAgentParser.UserAgentInfo uaInfo = userAgentParser.parseUserAgent(userAgent);
            
            // 방문자 통계 DTO 생성
            VisitorStatisticsDto dto = new VisitorStatisticsDto();
            dto.setVisitDatetime(Timestamp.valueOf(now));
            dto.setVisitDate(now.format(dateFormatter));
            dto.setVisitYear(now.getYear());
            dto.setVisitMonth(now.getMonthValue());
            dto.setVisitDay(now.getDayOfMonth());
            dto.setVisitHour(now.getHour());
            dto.setVisitWeekday(now.getDayOfWeek().getValue());
            dto.setIpAddress(ipAddress);
            dto.setUserAgent(userAgent);
            dto.setBrowser(uaInfo.getBrowser());
            dto.setOs(uaInfo.getOs());
            dto.setReferer(referer);
            dto.setPageUrl(pageUrl);
            dto.setDomainType(uaInfo.getDomainType());
            
            // 방문자 로그 저장
            visitorStatisticsService.saveVisitorLog(dto);
            
        } catch (Exception e) {
            logger.error("방문자 로그 수집 중 오류 발생: {}", e.getMessage(), e);
        }
    }
}
