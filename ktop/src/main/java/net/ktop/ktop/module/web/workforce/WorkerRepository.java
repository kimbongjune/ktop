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
	
	public WorkerDto getWorkerOne(String id){
		return template.selectOne(MAPPER_NAME + "getWorkerOne", id);
	}
	
	public int insertWorker(WorkerDto dto){
		return template.insert(MAPPER_NAME + "insertWorker", dto);
	}

	public int updateWorker(WorkerDto dto){
		return template.update(MAPPER_NAME + "updateWorker", dto);
	}
	
	public List<WorkerDto> selectWorkerList(WorkerDto dto) {
		return template.selectList(MAPPER_NAME + "selectWorkerList", dto);
	}
	
	public int selectWorkerCount(WorkerDto dto) {
		return template.selectOne(MAPPER_NAME + "selectWorkerCount", dto);
	}
	
	public WorkerDto selectWorkerOne(WorkerDto dto) {
		return template.selectOne(MAPPER_NAME + "selectWorkerList", dto);
	}
}
