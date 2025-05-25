package net.ktop.ktop.module.web.admin.category;

import java.util.List;

public interface AdminSiteCategoryService {

	public int addCategory(AdminSiteCategoryDto dto);
	
	public List<AdminSiteCategoryDto> getAllCategory();
	
	public int deleteCategory(int id);
	
	public int updateCategory(AdminSiteCategoryDto dto);
}
