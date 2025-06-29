package net.ktop.ktop.module.web.admin.material.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import net.ktop.ktop.module.web.admin.material.AdminMaterialDto;
import net.ktop.ktop.module.web.admin.material.AdminMaterialRepository;
import net.ktop.ktop.module.web.admin.material.AdminMaterialService;

@Service
public class AdminMaterialServiceImpl implements AdminMaterialService {
	
	private final AdminMaterialRepository repository;
	
	@Autowired
	public AdminMaterialServiceImpl(AdminMaterialRepository repository) {
		this.repository = repository;
	}

	@Override
	public int addMaterial(AdminMaterialDto dto) {
		return repository.addMaterial(dto);
	}

	@Override
	public List<AdminMaterialDto> getAllMaterial() {
		return repository.getAllMaterial();
	}

	@Override
	public int deleteMaterial(int id) {
		return repository.deleteMaterial(id);
	}

	@Override
	public int updateMaterial(AdminMaterialDto dto) {
		int update = repository.updateMaterial(dto);
		if (update > 0) {
			repository.updateChildrenMaterial(dto);
	    }
	    return update;
	}

	
}
