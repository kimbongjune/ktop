package net.ktop.ktop.module.web.category;

import java.util.List;

public interface CategoryService {

	List<CategoryDto> getAllCategory();
	
	List<CategoryDto> selectCategoryById(int id);
	
	boolean isTopLevelCategory(int id);
}