package net.ktop.ktop.module.web.admin.ad.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.ad.AdBannerDto;
import net.ktop.ktop.module.web.admin.ad.AdBannerRepository;
import net.ktop.ktop.module.web.admin.ad.AdBannerService;

@Service
public class AdBannerServiceImpl implements AdBannerService {
    
    private final AdBannerRepository repository;
    
    @Autowired
    public AdBannerServiceImpl(AdBannerRepository repository) {
        this.repository = repository;
    }
    
    @Override
    public int insertAdBanner(AdBannerDto dto) {
        return repository.insertAdBanner(dto);
    }
    
    @Override
    public List<AdBannerDto> selectAdBannerList(AdBannerDto dto) {
        return repository.selectAdBannerList(dto);
    }
    
    @Override
    public int selectAdBannerCount(AdBannerDto dto) {
        return repository.selectAdBannerCount(dto);
    }
    
    @Override
    public AdBannerDto selectAdBannerOne(Long id) {
        return repository.selectAdBannerOne(id);
    }
    
    @Override
    public int updateAdBanner(AdBannerDto dto) {
        return repository.updateAdBanner(dto);
    }
    
    @Override
    public int deleteAdBanner(Long id) {
        return repository.deleteAdBanner(id);
    }
} 