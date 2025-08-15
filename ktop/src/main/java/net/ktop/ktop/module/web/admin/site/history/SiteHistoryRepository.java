package net.ktop.ktop.module.web.admin.site.history;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SiteHistoryRepository {
    
    private final SqlSessionTemplate template;
    private final static String MAPPER_NAME = "siteHistoryMapper.";
    
    @Autowired
    public SiteHistoryRepository(SqlSessionTemplate template) {
        this.template = template;
    }
    
    /**
     * 히스토리 목록 조회
     */
    public List<SiteHistoryDto> selectSiteHistoryList(SiteHistoryDto dto) {
        return template.selectList(MAPPER_NAME + "selectSiteHistoryList", dto);
    }
    
    /**
     * 히스토리 총 개수 조회
     */
    public int selectSiteHistoryCount(SiteHistoryDto dto) {
        return template.selectOne(MAPPER_NAME + "selectSiteHistoryCount", dto);
    }
    
    /**
     * 히스토리 상세 조회
     */
    public SiteHistoryDto selectSiteHistoryOne(Long id) {
        return template.selectOne(MAPPER_NAME + "selectSiteHistoryOne", id);
    }
    
    /**
     * 히스토리 등록
     */
    public int insertSiteHistory(SiteHistoryDto dto) {
        return template.insert(MAPPER_NAME + "insertSiteHistory", dto);
    }
    
    /**
     * 타입별 히스토리 조회
     */
    public List<SiteHistoryDto> selectSiteHistoryByType(String type) {
        return template.selectList(MAPPER_NAME + "selectSiteHistoryByType", type);
    }
    
    /**
     * 사용자별 히스토리 조회
     */
    public List<SiteHistoryDto> selectSiteHistoryByUserId(String userId) {
        return template.selectList(MAPPER_NAME + "selectSiteHistoryByUserId", userId);
    }
    
    /**
     * 기간별 히스토리 조회
     */
    public List<SiteHistoryDto> selectSiteHistoryByDateRange(SiteHistoryDto dto) {
        return template.selectList(MAPPER_NAME + "selectSiteHistoryByDateRange", dto);
    }
}
