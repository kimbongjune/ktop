package net.ktop.ktop.module.web.partner;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/partner")
public class PartnerController {

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
	public String partnerJoin() {
		return "partner/join";
	}
	
	@RequestMapping(value = "/regist", method = {RequestMethod.GET})
	public String partnerRegist() {
		return "partner/regist";
	}
	
	@RequestMapping(value = "/edit", method = {RequestMethod.GET})
	public String partnerEdit() {
		return "partner/edit";
	}
}
