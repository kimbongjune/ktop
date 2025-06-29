package net.ktop.ktop.module.web.workforce.workfield;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkFieldRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "workFieldMapper.";

	@Autowired
	public WorkFieldRepository(SqlSessionTemplate template) {
		this.template = template;
	}
   
	public int addWorkField(WorkFieldDto dto) {
		return template.insert(MAPPER_NAME+"inserWorkField", dto);
	}
	
	public List<WorkFieldDto> getAllWorkField() {
		return template.selectList(MAPPER_NAME+"selectWorkFieldAll");
	}
	
	public int deleteWorkField(int id) {
		return template.delete(MAPPER_NAME+"deleteWorkFieldOne", id);
	}
	
	public int updateWorkField(WorkFieldDto dto) {
		return template.update(MAPPER_NAME+"updateWorkField", dto);
	}
} 