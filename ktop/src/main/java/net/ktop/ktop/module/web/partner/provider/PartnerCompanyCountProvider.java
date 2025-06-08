package net.ktop.ktop.module.web.partner.provider;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.ktop.ktop.module.web.partner.PartnerCompanyDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyService;

@Component
public class PartnerCompanyCountProvider {

	private final PartnerCompanyService partnerCompanyService;

	@Autowired
	public PartnerCompanyCountProvider(PartnerCompanyService partnerCompanyService) {
		this.partnerCompanyService = partnerCompanyService;
	}

	public int getApprovedCount(String userId, int categoryId, boolean isTopLevel) {
		PartnerCompanyDto dto = new PartnerCompanyDto();
		dto.setId(userId);
		dto.setCategoryId(String.valueOf(categoryId));
		dto.setStatus("approved");
		dto.setTopLevel(isTopLevel);
		return partnerCompanyService.getPartnerCompanyCount(dto);
	}
}
