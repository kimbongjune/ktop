package net.ktop.ktop.module.web.company.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyRepository;
import net.ktop.ktop.module.web.company.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	
	private final CompanyRepository companyRepository;

	@Autowired
	public CompanyServiceImpl(CompanyRepository companyRepository) {
		this.companyRepository = companyRepository;
	}

	@Override
	public CompanyDto getCompanyOne(String id) {
		return companyRepository.getCompanyOne(id);
	}
	
}
