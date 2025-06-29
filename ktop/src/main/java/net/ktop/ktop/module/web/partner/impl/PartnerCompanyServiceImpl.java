package net.ktop.ktop.module.web.partner.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.partner.PartnerCompanyDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyRepository;
import net.ktop.ktop.module.web.partner.PartnerCompanyService;

@Service
public class PartnerCompanyServiceImpl implements PartnerCompanyService {
	
	private final PartnerCompanyRepository partnerCompanyRepository;
	
	@Autowired
	public PartnerCompanyServiceImpl(PartnerCompanyRepository partnerCompanyRepository) {
		this.partnerCompanyRepository = partnerCompanyRepository;
	}

	@Override
	public PartnerCompanyDto getPartnerCompanyOne(PartnerCompanyDto dto) {
		return partnerCompanyRepository.getPartnerCompanyOne(dto);
	}

	@Override
	public int insertPartnerOne(PartnerCompanyDto dto) {
		return partnerCompanyRepository.insertPartnerOne(dto);
	}

	@Override
	public int updatePartnerCompany(PartnerCompanyDto dto) {
		return partnerCompanyRepository.updatePartnerCompany(dto);
	}

	@Override
	public List<PartnerCompanyDto> getPartnerCompanyList(PartnerCompanyDto dto) {
		return partnerCompanyRepository.getPartnerCompanyList(dto);
	}

	@Override
	public int selectPartnerCompanyCount(PartnerCompanyDto dto) {
		return partnerCompanyRepository.selectPartnerCompanyCount(dto);
	}

	@Override
	public int getPartnerCompanyCount(PartnerCompanyDto dto) {
		return partnerCompanyRepository.getPartnerCompanyCount(dto);
	}

}
