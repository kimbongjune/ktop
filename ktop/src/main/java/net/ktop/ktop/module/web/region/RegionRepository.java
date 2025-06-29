package net.ktop.ktop.module.web.region;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegionRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "regionMapper.";

	@Autowired
	public RegionRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public List<RegionDto> getAllRegion() {
		return template.selectList(MAPPER_NAME+"selectRegionAll");
	}
	
	public int addRegion(RegionDto dto) {
		return template.insert(MAPPER_NAME+"insertRegion", dto);
	}
	
	public int deleteRegion(int id) {
		return template.delete(MAPPER_NAME+"deleteRegionOne", id);
	}
	
	public int updateRegion(RegionDto dto) {
		return template.update(MAPPER_NAME+"updateRegion", dto);
	}
}
