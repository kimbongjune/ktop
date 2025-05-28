package net.ktop.ktop.module.web.category;

import java.util.List;

public interface CategoryService {

	public List<CategoryDto> getAllCategory();
	
	public List<CategoryDto> selectCategoryById(int id);
}