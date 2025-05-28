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
}
