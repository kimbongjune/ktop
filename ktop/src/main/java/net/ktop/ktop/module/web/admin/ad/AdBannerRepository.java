package net.ktop.ktop.module.web.admin.ad;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdBannerRepository {
    
    private final SqlSessionTemplate template;
    private final static String MAPPER_NAME = "adBannerMapper.";
    
    @Autowired
    public AdBannerRepository(SqlSessionTemplate template) {
        this.template = template;
    }
    
    public int insertAdBanner(AdBannerDto dto) {
        return template.insert(MAPPER_NAME + "insertAdBanner", dto);
    }
    
    public List<AdBannerDto> selectAdBannerList(AdBannerDto dto) {
        return template.selectList(MAPPER_NAME + "selectAdBannerList", dto);
    }
    
    public int selectAdBannerCount(AdBannerDto dto) {
        return template.selectOne(MAPPER_NAME + "selectAdBannerCount", dto);
    }
    
    public AdBannerDto selectAdBannerOne(Long id) {
        return template.selectOne(MAPPER_NAME + "selectAdBannerOne", id);
    }
    
    public int updateAdBanner(AdBannerDto dto) {
        return template.update(MAPPER_NAME + "updateAdBanner", dto);
    }
    
    public int deleteAdBanner(Long id) {
        return template.delete(MAPPER_NAME + "deleteAdBanner", id);
    }
} 