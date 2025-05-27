package net.ktop.ktop.module.web.admin.region.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.region.AdminRegionDto;
import net.ktop.ktop.module.web.admin.region.AdminRegionRepository;
import net.ktop.ktop.module.web.admin.region.AdminRegionService;

@Service
public class AdminRegionServiceImpl implements AdminRegionService {
	
private final AdminRegionRepository repository;
	
	@Autowired
	public AdminRegionServiceImpl(AdminRegionRepository repository) {
		this.repository = repository;
	}

	@Override
	public int addRegion(AdminRegionDto dto) {
		return repository.addRegion(dto);
	}

	@Override
	public List<AdminRegionDto> getAllRegion() {
		return repository.getAllRegion();
	}

	@Override
	public int deleteRegion(int id) {
		return repository.deleteRegion(id);
	}

	@Override
	public int updateRegion(AdminRegionDto dto) {
		return repository.updateRegion(dto);
	}

}
