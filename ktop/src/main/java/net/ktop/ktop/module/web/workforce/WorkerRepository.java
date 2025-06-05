package net.ktop.ktop.module.web.workforce;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkerRepository {
	
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "workerMapper.";

	@Autowired
	public WorkerRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public WorkerDto getWorkerList(WorkerDto dto){
		return template.selectOne(MAPPER_NAME + "selectWorkerList", dto);
	}

}
