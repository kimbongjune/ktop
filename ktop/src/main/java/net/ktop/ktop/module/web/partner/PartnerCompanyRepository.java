package net.ktop.ktop.module.web.partner;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PartnerCompanyRepository {
	
	private final SqlSessionTemplate template;
	
	private final static String MAPPER_NAME = "partnerCompanyMapper.";
	
	@Autowired
	public PartnerCompanyRepository(SqlSessionTemplate template) {
		this.template = template;
	}

	public PartnerCompanyDto getPartnerCompanyOne(String id) {
		return template.selectOne(MAPPER_NAME + "getPartnerCompanyOne", id);
	}
}
