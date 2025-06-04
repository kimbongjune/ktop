package net.ktop.ktop.module.web.admin.material;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminMaterialRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "adminMaterialMapper.";

	@Autowired
	public AdminMaterialRepository(SqlSessionTemplate template) {
		this.template = template;
	}
   
	public int addMaterial(AdminMaterialDto dto) {
		return template.insert(MAPPER_NAME+"insertMaterial", dto);
	}
	
	public List<AdminMaterialDto> getAllMaterial() {
		return template.selectList(MAPPER_NAME+"selectMaterialAll");
	}
	
	public int deleteMaterial(int id) {
		return template.delete(MAPPER_NAME+"deleteMaterialOne", id);
	}
	
	public int updateMaterial(AdminMaterialDto dto) {
		return template.update(MAPPER_NAME+"updateMaterial", dto);
	}
	
	public int updateChildrenMaterial(AdminMaterialDto dto) {
		return template.update(MAPPER_NAME+"updateChildActives", dto);
	}
}
