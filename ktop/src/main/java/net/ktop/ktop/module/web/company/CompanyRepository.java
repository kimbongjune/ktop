package net.ktop.ktop.module.web.company;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyRepository {
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "companyMapper.";

	@Autowired
	public CompanyRepository(SqlSessionTemplate template) {
		this.template = template;
	}
	
	public CompanyDto getCompanyOne(String id) {
		return template.selectOne(MAPPER_NAME + "getCompanyOne", id);
	}
	
	public int insertCompanyOne(CompanyDto dto) {
		return template.insert(MAPPER_NAME + "insertCompanyOne", dto);
	}
	
	public int updateCompanyOne(CompanyDto dto) {
		return template.update(MAPPER_NAME + "updateCompanyOne", dto);
	}
}
