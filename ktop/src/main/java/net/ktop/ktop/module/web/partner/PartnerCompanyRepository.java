package net.ktop.ktop.module.web.partner;

import java.util.List;

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

	public PartnerCompanyDto getPartnerCompanyOne(PartnerCompanyDto dto) {
		return template.selectOne(MAPPER_NAME + "getPartnerCompanyOne", dto);
	}
	
	public int insertPartnerOne(PartnerCompanyDto dto) {
		return template.insert(MAPPER_NAME + "insertPartnerOne", dto);
	}
	
	public int updatePartnerCompany(PartnerCompanyDto dto) {
		return template.insert(MAPPER_NAME + "updatePartnerCompany", dto);
	}
	
	public List<PartnerCompanyDto> getPartnerCompanyList(PartnerCompanyDto dto) {
		return template.selectList(MAPPER_NAME + "getPartnerCompanyList", dto);
	}
}
