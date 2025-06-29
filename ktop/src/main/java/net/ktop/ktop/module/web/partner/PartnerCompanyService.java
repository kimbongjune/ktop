package net.ktop.ktop.module.web.partner;

import java.util.List;

public interface PartnerCompanyService {
	PartnerCompanyDto getPartnerCompanyOne(PartnerCompanyDto dto);
	
	int insertPartnerOne(PartnerCompanyDto dto);
	
	int updatePartnerCompany(PartnerCompanyDto dto);

	List<PartnerCompanyDto> getPartnerCompanyList(PartnerCompanyDto dto);
	
	int selectPartnerCompanyCount(PartnerCompanyDto dto);
	
	int getPartnerCompanyCount(PartnerCompanyDto dto);
}
