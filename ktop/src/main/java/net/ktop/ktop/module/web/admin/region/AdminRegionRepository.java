package net.ktop.ktop.module.web.admin.region;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminRegionRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "adminRegionMapper.";

	@Autowired
	public AdminRegionRepository(SqlSessionTemplate template) {
		this.template = template;
	}
   
	public int addRegion(AdminRegionDto dto) {
		return template.insert(MAPPER_NAME+"insertRegion", dto);
	}
	
	public List<AdminRegionDto> getAllRegion() {
		return template.selectList(MAPPER_NAME+"selectRegionAll");
	}
	
	public int deleteRegion(int id) {
		return template.delete(MAPPER_NAME+"deleteRegionOne", id);
	}
	
	public int updateRegion(AdminRegionDto dto) {
		return template.update(MAPPER_NAME+"updateRegion", dto);
	}
	
	public int updateChildrenRegion(AdminRegionDto dto) {
		return template.update(MAPPER_NAME+"updateChildActives", dto);
	}
}
