package net.ktop.ktop.module.web.partner.impl;

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
	public PartnerCompanyDto getPartnerCompanyOne(String id) {
		return partnerCompanyRepository.getPartnerCompanyOne(id);
	}

}
