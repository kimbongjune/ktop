package net.ktop.ktop.module.web.company;

import java.util.List;

import net.ktop.ktop.module.web.company.file.CompanyFileDto;

public interface CompanyService {
	CompanyDto getCompanyOne(String id);
	
	int insertCompanyOne(CompanyDto dto);
	
	int insertCompanyFiles(List<CompanyFileDto> dto);
	
	int updateCompanyOne(CompanyDto dto);
	
	int deleteCompanyFileOne(String id);
}
