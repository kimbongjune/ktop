package net.ktop.ktop.module.web.partner;

import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;

@Controller
@RequestMapping("/partner")
public class PartnerController {
	
	private final CompanyService companyService;
	private final RegionService regionService;
	private final PartnerCompanyService partnerCompanyService;

	public PartnerController(CompanyService companyService, RegionService regionService, PartnerCompanyService partnerCompanyService) {
		this.companyService = companyService;
		this.regionService = regionService;
		this.partnerCompanyService = partnerCompanyService;
	}

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String partner() {
		return "partner/partners";
	}
	
	@RequestMapping(value = "/{company}", method = {RequestMethod.GET})
	public String partner(@PathVariable("company") String company) {
		return "partner/partner";
	}
	
	@RequestMapping(value = "/{company}/products", method = {RequestMethod.GET})
	public String partnerProducts(@PathVariable("company") String company) {
		return "partner/products";
	}
	
	@RequestMapping(value = "/guide", method = {RequestMethod.GET})
	public String partnerGuide() {
		return "partner/guide";
	}
	
	@RequestMapping(value = "/join", method = {RequestMethod.GET})
	public String partnerJoin(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		PartnerCompanyDto dto = null;
		if(user != null) {
			dto = partnerCompanyService.getPartnerCompanyOne(user.getUsername());
		}
		System.out.println(dto);
		return "partner/join";
	}
	
	@RequestMapping(value = "/regist", method = {RequestMethod.GET})
	public String partnerRegist(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		CompanyDto dto = null;
		if(user != null) {
			dto = companyService.getCompanyOne(user.getUsername());
		}
		List<RegionDto> regionList = regionService.getAllRegion();
		model.addAttribute("regionList", regionList);
	   
		model.addAttribute("company", dto);
		return "partner/regist";
	}
	
	@RequestMapping(value = "/edit", method = {RequestMethod.GET})
	public String partnerEdit() {
		return "partner/edit";
	}
}
