package net.ktop.ktop.module.web.admin.ad;

import java.util.List;

public interface AdBannerService {
    
    int insertAdBanner(AdBannerDto dto);
    
    List<AdBannerDto> selectAdBannerList(AdBannerDto dto);
    
    AdBannerDto selectAdBannerOne(Long id);
    
    int updateAdBanner(AdBannerDto dto);
    
    int deleteAdBanner(Long id);
} 