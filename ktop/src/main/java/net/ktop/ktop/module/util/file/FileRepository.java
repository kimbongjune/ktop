package net.ktop.ktop.module.util.file;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FileRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "fileMapper.";

	@Autowired
	public FileRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public void saveFile(FileDto fileDto) {
		template.insert(MAPPER_NAME + "insertFile", fileDto);
	}
	
	public FileDto getFileById(int id) {
		return template.selectOne(MAPPER_NAME + "getFileById", id);
	}
	
}
