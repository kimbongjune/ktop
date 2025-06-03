package net.ktop.ktop.module.web.category;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "categoryMapper.";

	@Autowired
	public CategoryRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public List<CategoryDto> getAllCategory() {
		return template.selectList(MAPPER_NAME+"selectCategoryAll");
	}
	
	public List<CategoryDto> selectCategoryById(int id) {
		return template.selectList(MAPPER_NAME+"selectCategoryById", id);
	}
	
	public boolean isTopLevelCategory(int id) {
		return template.selectOne(MAPPER_NAME+"isTopLevelCategory", id);
	}
}
