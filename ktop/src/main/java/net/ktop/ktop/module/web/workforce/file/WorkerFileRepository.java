package net.ktop.ktop.module.web.workforce.file;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class WorkerFileRepository {

	private final SqlSessionTemplate template;
    private static final String MAPPER_NAME = "workerFileMapper.";
    
    @Autowired
	public WorkerFileRepository(SqlSessionTemplate template) {
		this.template = template;
	}
    
    public int insertWorkerFiles(List<WorkerFileDto> dto) {
        return template.insert(MAPPER_NAME + "insertWorkerFiles", dto);
    }

	public int deleteWorkerFileOne(String id) {
		System.out.println(id);
		return template.delete(MAPPER_NAME + "deleteWorkerFileOne", id);
	}
}
