package net.ktop.ktop.module.web.admin.visitor;

import java.util.List;

/**
 * 방문자 통계 Service
 */
public interface VisitorStatisticsService {
    
    /**
     * 접속자 상세 로그 조회
     */
    List<VisitorStatisticsDto> getVisitorLogs(VisitorStatisticsDto dto);
    
    /**
     * 접속자 상세 로그 개수 조회
     */
    int getVisitorLogsCount(VisitorStatisticsDto dto);
    
    /**
     * 도메인별 통계 조회
     */
    List<VisitorStatisticsDto> getDomainStats(VisitorStatisticsDto dto);
    
    /**
     * 브라우저별 통계 조회
     */
    List<VisitorStatisticsDto> getBrowserStats(VisitorStatisticsDto dto);
    
    /**
     * OS별 통계 조회
     */
    List<VisitorStatisticsDto> getOsStats(VisitorStatisticsDto dto);
    
    /**
     * 시간별 통계 조회
     */
    List<VisitorStatisticsDto> getHourlyStats(VisitorStatisticsDto dto);
    
    /**
     * 요일별 통계 조회
     */
    List<VisitorStatisticsDto> getWeekdayStats(VisitorStatisticsDto dto);
    
    /**
     * 일별 통계 조회
     */
    List<VisitorStatisticsDto> getDailyStats(VisitorStatisticsDto dto);
    
    /**
     * 월별 통계 조회
     */
    List<VisitorStatisticsDto> getMonthlyStats(VisitorStatisticsDto dto);
    
    /**
     * 년별 통계 조회
     */
    List<VisitorStatisticsDto> getYearlyStats(VisitorStatisticsDto dto);
    
    /**
     * 방문자 로그 저장
     */
    void saveVisitorLog(VisitorStatisticsDto dto);
}
