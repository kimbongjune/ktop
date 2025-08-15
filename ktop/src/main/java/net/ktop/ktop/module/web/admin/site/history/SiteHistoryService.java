package net.ktop.ktop.module.web.admin.site.history;

import java.util.List;

public interface SiteHistoryService {
    
    /**
     * 히스토리 목록 조회
     */
    List<SiteHistoryDto> selectSiteHistoryList(SiteHistoryDto dto);
    
    /**
     * 히스토리 총 개수 조회
     */
    int selectSiteHistoryCount(SiteHistoryDto dto);
    
    /**
     * 히스토리 상세 조회
     */
    SiteHistoryDto selectSiteHistoryOne(Long id);
    
    /**
     * 히스토리 등록
     */
    int insertSiteHistory(SiteHistoryDto dto);
    
    /**
     * 타입별 히스토리 조회
     */
    List<SiteHistoryDto> selectSiteHistoryByType(String type);
    
    /**
     * 사용자별 히스토리 조회
     */
    List<SiteHistoryDto> selectSiteHistoryByUserId(String userId);
    
    /**
     * 기간별 히스토리 조회
     */
    List<SiteHistoryDto> selectSiteHistoryByDateRange(SiteHistoryDto dto);
    
    /**
     * 히스토리 로그 기록 (편의 메서드)
     */
    void logHistory(String userId, String type, String ip, String parameters);
}
