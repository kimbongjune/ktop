package net.ktop.ktop.module.web.region.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.region.AdminRegionDto;
import net.ktop.ktop.module.web.admin.region.AdminRegionRepository;
import net.ktop.ktop.module.web.admin.region.AdminRegionService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionRepository;
import net.ktop.ktop.module.web.region.RegionService;

@Service
public class RegionServiceImpl implements RegionService {
	
private final RegionRepository repository;
	
	@Autowired
	public RegionServiceImpl(RegionRepository repository) {
		this.repository = repository;
	}

	@Override
	public List<RegionDto> getAllRegion() {
		return repository.getAllRegion();
	}

}
