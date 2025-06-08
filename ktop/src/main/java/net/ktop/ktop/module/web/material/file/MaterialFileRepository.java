package net.ktop.ktop.module.web.material.file;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MaterialFileRepository {

	private final SqlSessionTemplate template;
	private static final String MAPPER = "materialFileMapper.";

	@Autowired
	public MaterialFileRepository(SqlSessionTemplate template) {
		this.template = template;
	}

	public int insertMaterialFiles(List<MaterialFileDto> list) {
		return template.insert(MAPPER + "insertMaterialFiles", list);
	}

	public int deleteMaterialFileOne(String id) {
		return template.delete(MAPPER + "deleteMaterialFileOne", id);
	}
}
