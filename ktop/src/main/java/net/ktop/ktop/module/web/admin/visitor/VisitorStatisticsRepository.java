package net.ktop.ktop.module.web.admin.visitor;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VisitorStatisticsRepository {
    
    private final SqlSessionTemplate template;
    private final static String MAPPER_NAME = "visitorStatisticsMapper.";
    
    @Autowired
    public VisitorStatisticsRepository(SqlSessionTemplate template) {
        this.template = template;
    }
    
    /**
     * 접속자 상세 로그 조회
     */
    public List<VisitorStatisticsDto> getVisitorLogs(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getVisitorLogs", dto);
    }
    
    /**
     * 접속자 상세 로그 개수 조회
     */
    public int getVisitorLogsCount(VisitorStatisticsDto dto) {
        return template.selectOne(MAPPER_NAME + "getVisitorLogsCount", dto);
    }
    
    /**
     * 도메인별 통계 조회
     */
    public List<VisitorStatisticsDto> getDomainStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getDomainStats", dto);
    }
    
    /**
     * 브라우저별 통계 조회
     */
    public List<VisitorStatisticsDto> getBrowserStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getBrowserStats", dto);
    }
    
    /**
     * OS별 통계 조회
     */
    public List<VisitorStatisticsDto> getOsStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getOsStats", dto);
    }
    
    /**
     * 시간별 통계 조회
     */
    public List<VisitorStatisticsDto> getHourlyStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getHourlyStats", dto);
    }
    
    /**
     * 요일별 통계 조회
     */
    public List<VisitorStatisticsDto> getWeekdayStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getWeekdayStats", dto);
    }
    
    /**
     * 일별 통계 조회
     */
    public List<VisitorStatisticsDto> getDailyStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getDailyStats", dto);
    }
    
    /**
     * 월별 통계 조회
     */
    public List<VisitorStatisticsDto> getMonthlyStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getMonthlyStats", dto);
    }
    
    /**
     * 년별 통계 조회
     */
    public List<VisitorStatisticsDto> getYearlyStats(VisitorStatisticsDto dto) {
        return template.selectList(MAPPER_NAME + "getYearlyStats", dto);
    }
    
    /**
     * 방문자 로그 저장
     */
    public void insertVisitorLog(VisitorStatisticsDto dto) {
        template.insert(MAPPER_NAME + "insertVisitorLog", dto);
    }
}
