package net.ktop.ktop.module.web.company.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyRepository;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.company.file.CompanyFileRepository;

@Service
public class CompanyServiceImpl implements CompanyService{
	
	private final CompanyRepository companyRepository;
	private final CompanyFileRepository companyFileRepository;

	@Autowired
	public CompanyServiceImpl(CompanyRepository companyRepository, CompanyFileRepository companyFileRepository) {
		this.companyRepository = companyRepository;
		this.companyFileRepository = companyFileRepository;
	}

	@Override
	public CompanyDto getCompanyOne(String id) {
		return companyRepository.getCompanyOne(id);
	}

	@Override
	public int insertCompanyOne(CompanyDto dto) {
		return companyRepository.insertCompanyOne(dto);
	}
	
	@Override
	public int updateCompanyOne(CompanyDto dto) {
		return companyRepository.updateCompanyOne(dto);
	}

	@Override
	public int insertCompanyFiles(List<CompanyFileDto> dto) {
		return companyFileRepository.insertCompanyFiles(dto);
	}

	@Override
	public int deleteCompanyFileOne(String id) {
		return companyFileRepository.deleteCompanyFileOne(id);
	}
	
	
	
}
