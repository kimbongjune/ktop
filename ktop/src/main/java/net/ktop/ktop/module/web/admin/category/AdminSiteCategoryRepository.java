package net.ktop.ktop.module.web.admin.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminSiteCategoryRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "adminCategoryMapper.";

	@Autowired
	public AdminSiteCategoryRepository(SqlSessionTemplate template) {
		this.template = template;
	}
   
	public int addCategory(AdminSiteCategoryDto dto) {
		return template.insert(MAPPER_NAME+"insertCategory", dto);
	}
	
	public List<AdminSiteCategoryDto> getAllCategory() {
		return template.selectList(MAPPER_NAME+"selectCategoryAll");
	}
	
	public int deleteCategory(int id) {
		return template.delete(MAPPER_NAME+"deleteCategoryOne", id);
	}
	
	public int updateCategory(AdminSiteCategoryDto dto) {
		return template.update(MAPPER_NAME+"updateCategory", dto);
	}
	
	public int updateChildrenCategory(AdminSiteCategoryDto dto) {
		return template.update(MAPPER_NAME+"updateChildActives", dto);
	}
}
