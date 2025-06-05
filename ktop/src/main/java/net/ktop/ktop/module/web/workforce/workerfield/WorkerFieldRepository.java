package net.ktop.ktop.module.web.workforce.workerfield;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkerFieldRepository {
	
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "workerFieldMapper.";
	
	@Autowired
	public WorkerFieldRepository(SqlSessionTemplate template) {
		this.template = template;
	}

	public int insertWorkerField(WorkerFieldDto dto) {
		deleteWorkerField(dto.getUserId());
		return template.insert(MAPPER_NAME + "insertWorkerField", dto);
	}
	
	public int deleteWorkerField(String id) {
		return template.delete(MAPPER_NAME + "deleteWorkerField", id);
	}
}
