package net.ktop.ktop.module.web.partner;

import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.category.CategoryDto;
import net.ktop.ktop.module.web.category.CategoryService;
import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;

@Controller
@RequestMapping("/partner")
public class PartnerController {
	
	private final CompanyService companyService;
	private final RegionService regionService;
	private final PartnerCompanyService partnerCompanyService;
	private final CategoryService categoryService; 
	private final MaterialService materialService;

	public PartnerController(CompanyService companyService, RegionService regionService, PartnerCompanyService partnerCompanyService, CategoryService categoryService, MaterialService materialService) {
		this.companyService = companyService;
		this.regionService = regionService;
		this.partnerCompanyService = partnerCompanyService;
		this.categoryService = categoryService;
		this.materialService = materialService;
	}

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String partner() {
		return "partner/partners";
	}
	
	@RequestMapping(value = "/{category}/{company}", method = {RequestMethod.GET})
	public String partner(@PathVariable("company") String company, @PathVariable("category") int category, Model model) {
		PartnerCompanyDto partnerCompanyDto = new PartnerCompanyDto();
		partnerCompanyDto.setCategoryId(category + "");
		partnerCompanyDto.setId(company);
		PartnerCompanyDto partnerDto = partnerCompanyService.getPartnerCompanyOne(partnerCompanyDto);
		if(partnerDto == null) {
			return "error/404";
		}
		
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categorySubList", list);
		model.addAttribute("partner", partnerDto);
		model.addAttribute("categoryNum", category);
		model.addAttribute("companyNum", company);
		return "partner/partner";
	}
	
	@RequestMapping(value = "/{category}/{company}/products", method = {RequestMethod.GET})
	public String partnerProducts(@PathVariable("company") String company, @PathVariable("category") int category, Model model, @AuthenticationPrincipal CustomUserDetails user, MaterialDto dto,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		dto.setPartnerId(company);
		dto.setCategoryId(category);
		dto.setPage(page);
		dto.setSize(size);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = materialService.selectMaterialCount(dto);
		dto.getPagination().setTotalCount(totalCount);
		
		List<MaterialDto> materials = materialService.selectMaterialList(dto);
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categorySubList", list);
		model.addAttribute("categoryNum", category);
		model.addAttribute("companyNum", company);
		model.addAttribute("materials", materials);
		model.addAttribute("pagination", dto.getPagination());
		model.addAttribute("searchDto", dto);
		return "partner/products";
	}
	
	@RequestMapping(value = "/guide", method = {RequestMethod.GET})
	public String partnerGuide() {
		return "partner/guide";
	}
	
	@RequestMapping(value = "/join", method = {RequestMethod.GET})
	public String partnerJoin(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		return "partner/join";
	}
	
	@RequestMapping(value = "/{category}/regist", method = {RequestMethod.GET})
	public String partnerRegist(Model model, @AuthenticationPrincipal CustomUserDetails user, @PathVariable("category") int category) {
		CompanyDto dto = null;
		if(user != null) {
			dto = companyService.getCompanyOne(user.getUsername());
		}
		
		List<RegionDto> regionList = regionService.getAllRegion();
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		model.addAttribute("regionList", regionList);
		model.addAttribute("company", dto);
		return "partner/regist";
	}
	
	@RequestMapping(value = "/{category}/regist", method = {RequestMethod.POST})
	public String partnerRegist(Model model, @AuthenticationPrincipal CustomUserDetails user, @PathVariable("category") int category,
			@ModelAttribute PartnerCompanyDto partnerDto) {
		partnerDto.setId(user.getUsername());
		partnerDto.setCategoryId(category + "");
		
		partnerCompanyService.insertPartnerOne(partnerDto);
		
		return "redirect:/partner/"+category + "/"+user.getUsername();
	}
	
	@RequestMapping(value = "/{category}/edit", method = {RequestMethod.GET})
	public String partnerEdit(@PathVariable("category") int category, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		PartnerCompanyDto partnerDto = null;
		if(user != null) {
			PartnerCompanyDto partnerCompanyDto = new PartnerCompanyDto();
			partnerCompanyDto.setCategoryId(category+"");
			partnerCompanyDto.setId(user.getUsername());
			partnerDto = partnerCompanyService.getPartnerCompanyOne(partnerCompanyDto);
		}
		if(partnerDto == null) {
			return "error/404";
		}
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		model.addAttribute("categoryNum", category);
		model.addAttribute("partner", partnerDto);
		return "partner/edit";
	}
	
	@RequestMapping(value = "/{category}/edit", method = {RequestMethod.POST})
	public String partnerEdit(@PathVariable("category") int category, Model model, @AuthenticationPrincipal CustomUserDetails user,
			@ModelAttribute PartnerCompanyDto dto) {
		if(user != null) {
			dto.setCategoryId(category+"");
			dto.setId(user.getUsername());
			partnerCompanyService.updatePartnerCompany(dto);
		}
		return "redirect:/partner/"+category + "/"+user.getUsername();
	}
}
