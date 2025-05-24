package net.ktop.ktop.module.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//@Controller
//@RequestMapping("/admin")
public class AdminController {
	
	@RequestMapping(value = "",  method = {RequestMethod.GET})
	public String admin() {
		return "admin/admin";
	}
	
	@RequestMapping(value = "/user/common",  method = {RequestMethod.GET})
	public String adminUserCommon(Model model) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userCommon");
		return "admin/user/common/index";
	}
	
	@RequestMapping(value = "/user/common/add",  method = {RequestMethod.GET})
	public String adminUserCommonAdd(Model model) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userCommon");
		return "admin/user/common/add";
	}
	
	@RequestMapping(value = "/user/common/mod/{id}",  method = {RequestMethod.GET})
	public String adminUserCommonMod(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userCommon");
		return "admin/user/common/mod";
	}
	
	@RequestMapping(value = "/user/partner",  method = {RequestMethod.GET})
	public String adminUserPartner(Model model, @RequestParam(value = "status", required = false) String status) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userPartner");
		model.addAttribute("status", status);
		return "admin/user/partner/index";
	}
	
	@RequestMapping(value = "/user/partner/add",  method = {RequestMethod.GET})
	public String adminUserPartnerAdd(Model model) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userPartner");
		return "admin/user/partner/add";
	}
	
	@RequestMapping(value = "/user/partner/mod/{id}",  method = {RequestMethod.GET})
	public String adminUserPartnerMod(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "user");
		model.addAttribute("activeSubMenu", "userPartner");
		return "admin/user/partner/mod";
	}
	
	@RequestMapping(value = "/material",  method = {RequestMethod.GET})
	public String adminMaterial(Model model) {
		model.addAttribute("activeMenu", "material");
		return "admin/material/index";
	}
	
	@RequestMapping(value = "/partner",  method = {RequestMethod.GET})
	public String adminPartner(Model model) {
		model.addAttribute("activeMenu", "partner");
		return "admin/partner/partners";
	}
	
	@RequestMapping(value = "/partner/{id}",  method = {RequestMethod.GET})
	public String adminPartner(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "partner");
		return "admin/partner/partner";
	}
	
	@RequestMapping(value = "/partner/{id}/product",  method = {RequestMethod.GET})
	public String adminPartnerProduct(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "partner");
		return "admin/partner/product";
	}
	
	@RequestMapping(value = "/workforce",  method = {RequestMethod.GET})
	public String adminWorkforce(Model model) {
		model.addAttribute("activeMenu", "workforce");
		model.addAttribute("activeSubMenu", "workforceMain");
		return "admin/workforce/workforces";
	}
	
	@RequestMapping(value = "/workforce/{id}",  method = {RequestMethod.GET})
	public String adminWorkforce(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "workforce");
		model.addAttribute("activeSubMenu", "workforceMain");
		return "admin/workforce/workforce";
	}
	
	@RequestMapping(value = "/workforce/category",  method = {RequestMethod.GET})
	public String adminWorkforceCategory(Model model) {
		model.addAttribute("activeMenu", "workforce");
		model.addAttribute("activeSubMenu", "workforceCategory");
		return "admin/workforce/category";
	}
	
	@RequestMapping(value = "/board",  method = {RequestMethod.GET})
	public String adminBoard(Model model) {
		model.addAttribute("activeMenu", "board");
		return "admin/board/boards";
	}
	
	@RequestMapping(value = "/board/{id}",  method = {RequestMethod.GET})
	public String adminBoard(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "board");
		return "admin/board/board";
	}
	
	@RequestMapping(value = "/board/write",  method = {RequestMethod.GET})
	public String adminBoardWrite(Model model) {
		model.addAttribute("activeMenu", "board");
		return "admin/board/write";
	}
	
	@RequestMapping(value = "/board/edit/{id}",  method = {RequestMethod.GET})
	public String adminBoarEdit(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "board");
		return "admin/board/write";
	}
	
	@RequestMapping(value = "/site/category",  method = {RequestMethod.GET})
	public String adminSiteCategory(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "category");
		return "admin/site/category/category";
	}
	
	@RequestMapping(value = "/site/ad/main",  method = {RequestMethod.GET})
	public String adminSiteAdMain(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/main";
	}
	
	@RequestMapping(value = "/site/ad/popup",  method = {RequestMethod.GET})
	public String adminSiteAdPopup(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/popup";
	}
	
	@RequestMapping(value = "/site/ad/bottom",  method = {RequestMethod.GET})
	public String adminSiteAdBottom(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/bottom";
	}
	
	@RequestMapping(value = "/site/ad/middle",  method = {RequestMethod.GET})
	public String adminSiteAdMiddle(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/middle";
	}
	
	@RequestMapping(value = "/site/ad/write",  method = {RequestMethod.GET})
	public String adminSiteAdWrite(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/write";
	}
	
	@RequestMapping(value = "/site/ad/edit/{id}",  method = {RequestMethod.GET})
	public String adminSiteAdEdit(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "ad");
		return "admin/site/ad/edit";
	}
	
	@RequestMapping(value = "/site/popup",  method = {RequestMethod.GET})
	public String adminSitePopup(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "popup");
		return "admin/site/popup/index";
	}
	
	@RequestMapping(value = "/site/popup/write",  method = {RequestMethod.GET})
	public String adminSitePopupWrite(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "popup");
		return "admin/site/popup/write";
	}
	
	@RequestMapping(value = "/site/popup/edit/{id}",  method = {RequestMethod.GET})
	public String adminSitePopupEdit(Model model, @PathVariable("id") String id) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "popup");
		return "admin/site/popup/edit";
	}
	
	@RequestMapping(value = "/site/visitor",  method = {RequestMethod.GET})
	public String adminSiteVisitor(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/index";
	}
	
	@RequestMapping(value = "/site/visitor/domain",  method = {RequestMethod.GET})
	public String adminSiteVisitorDomain(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/domain";
	}
	
	@RequestMapping(value = "/site/visitor/browser",  method = {RequestMethod.GET})
	public String adminSiteVisitorBrowser(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/browser";
	}
	
	@RequestMapping(value = "/site/visitor/os",  method = {RequestMethod.GET})
	public String adminSiteVisitorOs(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/os";
	}
	
	@RequestMapping(value = "/site/visitor/time",  method = {RequestMethod.GET})
	public String adminSiteVisitorTime(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/time";
	}
	
	@RequestMapping(value = "/site/visitor/date",  method = {RequestMethod.GET})
	public String adminSiteVisitorDate(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/date";
	}
	
	@RequestMapping(value = "/site/visitor/day",  method = {RequestMethod.GET})
	public String adminSiteVisitorDay(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/day";
	}
	
	@RequestMapping(value = "/site/visitor/month",  method = {RequestMethod.GET})
	public String adminSiteVisitorMonth(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/month";
	}
	
	@RequestMapping(value = "/site/visitor/year",  method = {RequestMethod.GET})
	public String adminSiteVisitorYear(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "visitor");
		return "admin/site/visitor/year";
	}
	
	@RequestMapping(value = "/site/history",  method = {RequestMethod.GET})
	public String adminSiteHistory(Model model) {
		model.addAttribute("activeMenu", "site");
		model.addAttribute("activeSubMenu", "history");
		return "admin/history/index";
	}
	
	@RequestMapping(value = "/region",  method = {RequestMethod.GET})
	public String adminSiteRegion(Model model) {
		model.addAttribute("activeMenu", "region");
		return "admin/region/index";
	}
}
