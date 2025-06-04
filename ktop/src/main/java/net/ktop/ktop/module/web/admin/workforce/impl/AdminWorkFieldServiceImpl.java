package net.ktop.ktop.module.web.admin.workforce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryDto;
import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryRepository;
import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryService;
import net.ktop.ktop.module.web.admin.material.AdminMaterialDto;
import net.ktop.ktop.module.web.admin.material.AdminMaterialRepository;
import net.ktop.ktop.module.web.admin.material.AdminMaterialService;
import net.ktop.ktop.module.web.admin.workforce.AdminWorkFieldDto;
import net.ktop.ktop.module.web.admin.workforce.AdminWorkFieldRepository;
import net.ktop.ktop.module.web.admin.workforce.AdminWorkFieldService;

@Service
public class AdminWorkFieldServiceImpl implements AdminWorkFieldService {
	
	private final AdminWorkFieldRepository repository;
	
	@Autowired
	public AdminWorkFieldServiceImpl(AdminWorkFieldRepository repository) {
		this.repository = repository;
	}

	@Override
	public int addWorkField(AdminWorkFieldDto dto) {
		return repository.addWorkField(dto);
	}

	@Override
	public List<AdminWorkFieldDto> getAllWorkField() {
		return repository.getAllWorkField();
	}

	@Override
	public int deleteWorkField(int id) {
		return repository.deleteWorkField(id);
	}

	@Override
	public int updateWorkField(AdminWorkFieldDto dto) {
		int update = repository.updateWorkField(dto);
		if (update > 0) {
			repository.updateChildrenWorkField(dto);
	    }
	    return update;
	}

	
}
