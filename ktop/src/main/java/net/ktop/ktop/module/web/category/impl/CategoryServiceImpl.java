package net.ktop.ktop.module.web.category.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.category.CategoryDto;
import net.ktop.ktop.module.web.category.CategoryRepository;
import net.ktop.ktop.module.web.category.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	private final CategoryRepository repository;
	
	@Autowired
	public CategoryServiceImpl(CategoryRepository repository) {
		this.repository = repository;
	}

	@Override
	public List<CategoryDto> getAllCategory() {
		return repository.getAllCategory();
	}

	@Override
	public List<CategoryDto> selectCategoryById(int id) {
		return repository.selectCategoryById(id);
	}
	
}
