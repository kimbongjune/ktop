package net.ktop.ktop.module.web.admin.category.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryDto;
import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryRepository;
import net.ktop.ktop.module.web.admin.category.AdminSiteCategoryService;

@Service
public class AdminSiteCategoryServiceImpl implements AdminSiteCategoryService {
	
	private final AdminSiteCategoryRepository repository;
	
	@Autowired
	public AdminSiteCategoryServiceImpl(AdminSiteCategoryRepository repository) {
		this.repository = repository;
	}

	@Override
	public int addCategory(AdminSiteCategoryDto dto) {
		return repository.addCategory(dto);
	}

	@Override
	public List<AdminSiteCategoryDto> getAllCategory() {
		return repository.getAllCategory();
	}

	@Override
	public int deleteCategory(int id) {
		return repository.deleteCategory(id);
	}

	@Override
	public int updateCategory(AdminSiteCategoryDto dto) {
		int update = repository.updateCategory(dto);
		if (update > 0) {
			repository.updateChildrenCategory(dto);
	    }
	    return update;
	}

	
}
