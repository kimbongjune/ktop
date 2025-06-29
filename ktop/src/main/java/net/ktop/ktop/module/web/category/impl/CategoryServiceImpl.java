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

	@Override
	public boolean isTopLevelCategory(int id) {
		return repository.isTopLevelCategory(id);
	}

	@Override
	public int addCategory(CategoryDto dto) {
		return repository.addCategory(dto);
	}

	@Override
	public int deleteCategory(int id) {
		return repository.deleteCategory(id);
	}

	@Override
	public int updateCategory(CategoryDto dto) {
		return repository.updateCategory(dto);
	}
	
}
