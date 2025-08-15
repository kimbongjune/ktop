package net.ktop.ktop.module.web.admin.site.history.impl;

import net.ktop.ktop.module.web.admin.site.history.SiteHistoryDto;
import net.ktop.ktop.module.web.admin.site.history.SiteHistoryRepository;
import net.ktop.ktop.module.web.admin.site.history.SiteHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SiteHistoryServiceImpl implements SiteHistoryService {
    
    private final SiteHistoryRepository siteHistoryRepository;
    
    @Autowired
    public SiteHistoryServiceImpl(SiteHistoryRepository siteHistoryRepository) {
        this.siteHistoryRepository = siteHistoryRepository;
    }
    
    @Override
    public List<SiteHistoryDto> selectSiteHistoryList(SiteHistoryDto dto) {
        return siteHistoryRepository.selectSiteHistoryList(dto);
    }
    
    @Override
    public int selectSiteHistoryCount(SiteHistoryDto dto) {
        return siteHistoryRepository.selectSiteHistoryCount(dto);
    }
    
    @Override
    public SiteHistoryDto selectSiteHistoryOne(Long id) {
        return siteHistoryRepository.selectSiteHistoryOne(id);
    }
    
    @Override
    public int insertSiteHistory(SiteHistoryDto dto) {
        return siteHistoryRepository.insertSiteHistory(dto);
    }
    
    @Override
    public List<SiteHistoryDto> selectSiteHistoryByType(String type) {
        return siteHistoryRepository.selectSiteHistoryByType(type);
    }
    
    @Override
    public List<SiteHistoryDto> selectSiteHistoryByUserId(String userId) {
        return siteHistoryRepository.selectSiteHistoryByUserId(userId);
    }
    
    @Override
    public List<SiteHistoryDto> selectSiteHistoryByDateRange(SiteHistoryDto dto) {
        return siteHistoryRepository.selectSiteHistoryByDateRange(dto);
    }
    
    @Override
    public void logHistory(String userId, String type, String ip, String parameters) {
        SiteHistoryDto dto = new SiteHistoryDto(userId, type, ip, parameters);
        siteHistoryRepository.insertSiteHistory(dto);
    }
}
