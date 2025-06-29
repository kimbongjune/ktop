package net.ktop.ktop.module.web.region.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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

	@Override
	public int addRegion(RegionDto dto) {
		return repository.addRegion(dto);
	}

	@Override
	public int deleteRegion(int id) {
		return repository.deleteRegion(id);
	}

	@Override
	public int updateRegion(RegionDto dto) {
		return repository.updateRegion(dto);
	}

}
