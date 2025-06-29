package net.ktop.ktop.module.web.category;

import java.util.List;

public interface CategoryService {

	List<CategoryDto> getAllCategory();
	
	List<CategoryDto> selectCategoryById(int id);
	
	boolean isTopLevelCategory(int id);
	
	int addCategory(CategoryDto dto);
	
	int deleteCategory(int id);
	
	int updateCategory(CategoryDto dto);
}