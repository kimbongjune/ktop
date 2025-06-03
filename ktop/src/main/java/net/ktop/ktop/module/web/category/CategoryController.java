package net.ktop.ktop.module.web.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.partner.PartnerCompanyDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	private final CategoryService categoryService; 
	private final CompanyService companyService;
	private final PartnerCompanyService partnerCompanyService;
	
	@Autowired
	public CategoryController(CategoryService categoryService, CompanyService companyService, PartnerCompanyService partnerCompanyService) {
		this.categoryService = categoryService;
		this.companyService = companyService;
		this.partnerCompanyService = partnerCompanyService;
	}

	@RequestMapping(value = "/{category}",  method = {RequestMethod.GET})
	public String category(@PathVariable("category") int category, Model model) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		boolean isTopLevelCategory = categoryService.isTopLevelCategory(category);
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("isTopLevelCategory", isTopLevelCategory);
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		
		return "category/category";
	}

	@RequestMapping(value = "/{category}/guide",  method = {RequestMethod.GET})
	public String categoryGuide(@PathVariable("category") int category, Model model) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		return "category/guide";
	}
	
	@RequestMapping(value = "/{category}/join",  method = {RequestMethod.GET})
	public String categoryJoin(@PathVariable("category") int category, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		CompanyDto dto = null;
		if(user != null) {
			dto = companyService.getCompanyOne(user.getUsername());
		}
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		PartnerCompanyDto partnerDto = null;
		if(user != null) {
			partnerDto = partnerCompanyService.getPartnerCompanyOne(user.getUsername());
		}
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		model.addAttribute("company", dto);
		model.addAttribute("partner", partnerDto);
		return "category/join";
	}
}
