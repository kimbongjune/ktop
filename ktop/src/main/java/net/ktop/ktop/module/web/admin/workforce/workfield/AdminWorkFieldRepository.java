package net.ktop.ktop.module.web.admin.workforce.workfield;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminWorkFieldRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "adminWorkFieldMapper.";

	@Autowired
	public AdminWorkFieldRepository(SqlSessionTemplate template) {
		this.template = template;
	}
   
	public int addWorkField(AdminWorkFieldDto dto) {
		return template.insert(MAPPER_NAME+"inserWorkField", dto);
	}
	
	public List<AdminWorkFieldDto> getAllWorkField() {
		return template.selectList(MAPPER_NAME+"selectWorkFieldAll");
	}
	
	public int deleteWorkField(int id) {
		return template.delete(MAPPER_NAME+"deleteWorkFieldOne", id);
	}
	
	public int updateWorkField(AdminWorkFieldDto dto) {
		return template.update(MAPPER_NAME+"updateWorkField", dto);
	}
	
	public int updateChildrenWorkField(AdminWorkFieldDto dto) {
		return template.update(MAPPER_NAME+"updateChildActives", dto);
	}
}
