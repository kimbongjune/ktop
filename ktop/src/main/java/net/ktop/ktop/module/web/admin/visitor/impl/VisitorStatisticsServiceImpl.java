package net.ktop.ktop.module.web.admin.visitor.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsDto;
import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsRepository;
import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsService;

/**
 * 방문자 통계 Service 구현체
 */
@Service
public class VisitorStatisticsServiceImpl implements VisitorStatisticsService {
    
    @Autowired
    private VisitorStatisticsRepository visitorStatisticsRepository;
    
    @Override
    public List<VisitorStatisticsDto> getVisitorLogs(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getVisitorLogs(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getDomainStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getDomainStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getBrowserStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getBrowserStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getOsStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getOsStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getHourlyStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getHourlyStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getWeekdayStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getWeekdayStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getDailyStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getDailyStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getMonthlyStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getMonthlyStats(dto);
    }
    
    @Override
    public List<VisitorStatisticsDto> getYearlyStats(VisitorStatisticsDto dto) {
        return visitorStatisticsRepository.getYearlyStats(dto);
    }
    
    @Override
    public void saveVisitorLog(VisitorStatisticsDto dto) {
        visitorStatisticsRepository.insertVisitorLog(dto);
    }
}
