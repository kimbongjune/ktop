package net.ktop.ktop.module.web.category;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.util.file.FileDto;
import net.ktop.ktop.module.util.file.FileService;
import net.ktop.ktop.module.web.admin.material.AdminMaterialDto;
import net.ktop.ktop.module.web.admin.material.AdminMaterialService;
import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.CompanyService;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.material.file.MaterialFileDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyDto;
import net.ktop.ktop.module.web.partner.PartnerCompanyService;
import net.ktop.ktop.module.web.partner.provider.PartnerCompanyCountProvider;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	private final CategoryService categoryService; 
	private final CompanyService companyService;
	private final PartnerCompanyService partnerCompanyService;
	private final PartnerCompanyCountProvider partnerCompanyCountProvider;
	private final AdminMaterialService adminMaterialService;
	private final MaterialService materialService;
	private final FileService fileService;
	
	@Autowired
	public CategoryController(CategoryService categoryService, CompanyService companyService, PartnerCompanyService partnerCompanyService, PartnerCompanyCountProvider partnerCompanyCountProvider, AdminMaterialService adminMaterialService, MaterialService materialService, FileService fileService) {
		this.categoryService = categoryService;
		this.companyService = companyService;
		this.partnerCompanyService = partnerCompanyService;
		this.partnerCompanyCountProvider = partnerCompanyCountProvider;
		this.adminMaterialService = adminMaterialService;
		this.materialService = materialService;
		this.fileService = fileService;
	}
	
	@ModelAttribute("partnerCompanyCount")
	public Integer getPartnerCompanyCount(@PathVariable(value = "category", required = false) Integer category,
	                                      @AuthenticationPrincipal CustomUserDetails user) {
		if (category == null || user == null) {
			return 0;
		}
		boolean isTop = categoryService.isTopLevelCategory(category);
		return partnerCompanyCountProvider.getApprovedCount(user.getUsername(), category, isTop);
	}

	@RequestMapping(value = "/{category}",  method = {RequestMethod.GET})
	public String category(@PathVariable("category") int category, Model model, @AuthenticationPrincipal CustomUserDetails user,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "12") int size) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		boolean isTopLevelCategory = categoryService.isTopLevelCategory(category);
		
		PartnerCompanyDto partnerCompanyDto = new PartnerCompanyDto();
		partnerCompanyDto.setCategoryId(category+"");
		partnerCompanyDto.setTopLevel(isTopLevelCategory);
		partnerCompanyDto.setStatus("approved");
		partnerCompanyDto.setPage(page);
		partnerCompanyDto.setSize(size);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = partnerCompanyService.selectPartnerCompanyCount(partnerCompanyDto);
		partnerCompanyDto.getPagination().setTotalCount(totalCount);
		
		List<PartnerCompanyDto> partnerList = partnerCompanyService.getPartnerCompanyList(partnerCompanyDto);
		System.out.println(partnerList.size());
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("isTopLevelCategory", isTopLevelCategory);
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		model.addAttribute("partnerList", partnerList);
		model.addAttribute("pagination", partnerCompanyDto.getPagination());
		model.addAttribute("searchDto", partnerCompanyDto);
		
		return "category/category";
	}

	@RequestMapping(value = "/{category}/guide",  method = {RequestMethod.GET})
	public String categoryGuide(@PathVariable("category") int category, Model model) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		boolean isTopLevelCategory = categoryService.isTopLevelCategory(category);
		model.addAttribute("isTopLevelCategory", isTopLevelCategory);
		
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
			PartnerCompanyDto partnerCompanyDto = new PartnerCompanyDto();
			partnerCompanyDto.setCategoryId(category+"");
			partnerCompanyDto.setId(user.getUsername());
			partnerDto = partnerCompanyService.getPartnerCompanyOne(partnerCompanyDto);
		}
		
		model.addAttribute("menuCategory", "category");
		model.addAttribute("categoryNum", category);
		model.addAttribute("categorySubList", list);
		model.addAttribute("company", dto);
		model.addAttribute("partner", partnerDto);
		return "category/join";
	}
	
	@RequestMapping(value = "/{category}/material", method = RequestMethod.GET)
	public String material(@PathVariable("category") int category,
	                           @AuthenticationPrincipal CustomUserDetails user,
	                           MaterialDto dto,
	                           @RequestParam(value = "page", defaultValue = "1") int page,
							   @RequestParam(value = "size", defaultValue = "10") int size,
	                           Model model) {
		dto.setPartnerId(user.getUsername());
		dto.setCategoryId(category);
		dto.setPage(page);
		dto.setSize(size);
		
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = materialService.selectMaterialCount(dto);
		dto.getPagination().setTotalCount(totalCount);
		
		List<MaterialDto> materials = materialService.selectMaterialList(dto);
		
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		
		model.addAttribute("categorySubList", list);
		model.addAttribute("categoryNum", category);
		model.addAttribute("materialList", materialList);
		model.addAttribute("materials", materials);
		model.addAttribute("pagination", dto.getPagination());
		model.addAttribute("searchDto", dto);
		return "product/product";
	}
	
	@RequestMapping(value = "/{category}/material/write", method = RequestMethod.GET)
	public String materialWrite(@PathVariable("category") int category,
	                           @AuthenticationPrincipal CustomUserDetails user,
	                           Model model) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		
		model.addAttribute("categorySubList", list);
		model.addAttribute("categoryNum", category);
		model.addAttribute("materialList", materialList);
		return "product/write";
	}
	
	@RequestMapping(value = "/{category}/material/write", method = RequestMethod.POST)
	public String materialWrite(@PathVariable("category") int category,
							   @ModelAttribute MaterialDto dto,
							   @RequestParam(value = "file", required = false) MultipartFile file,
	                           @AuthenticationPrincipal CustomUserDetails user,
	                           Model model) throws IOException {
		
		List<MaterialFileDto> materialFileList = new ArrayList<>();
		
		dto.setCategoryId(category);
		dto.setPartnerId(user.getUsername());
		
		materialService.insertMaterial(dto);
		
		if (file != null && !file.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file);
	        materialFileList.add(new MaterialFileDto(dto.getId(), fileDto.getId()));
	    }
		
		if(materialFileList != null && !materialFileList.isEmpty()) {
			materialService.insertMaterialFiles(materialFileList);
   		}
		System.out.println(file);
		return "redirect:/category/"+category+"/material";
	}
	
	@RequestMapping(value = "/{category}/material/edit/{id}", method = RequestMethod.GET)
	public String materialEdit(@PathVariable("category") int category,
							   @PathVariable("id") int id,
	                           @AuthenticationPrincipal CustomUserDetails user,
	                           Model model) {
		List<CategoryDto> list = categoryService.selectCategoryById(category);
		
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		MaterialDto material = materialService.selectMaterialOne(id);
		if(material == null) {
			return "error/404";
		}
		
		model.addAttribute("categorySubList", list);
		model.addAttribute("categoryNum", category);
		model.addAttribute("materialList", materialList);
		model.addAttribute("material", material);
		return "product/edit";
	}
	
	@RequestMapping(value = "/{category}/material/edit/{id}", method = RequestMethod.POST)
	public String materialEdit(@PathVariable("category") int category,
							   @ModelAttribute MaterialDto dto,
							   @PathVariable("id") int id,
							   @RequestParam(value = "file", required = false) MultipartFile file,
							   @RequestParam(value = "delFile", required = false) String delFile,
	                           @AuthenticationPrincipal CustomUserDetails user,
	                           Model model) throws IOException {
		// 권한 체크: 자료 조회 후 작성자 확인
		MaterialDto existingMaterial = materialService.selectMaterialOne(id);
		if(existingMaterial == null) {
			return "error/404";
		}
		if(user == null || !existingMaterial.getPartnerId().equals(user.getUsername())) {
			return "error/404";
		}
		
		dto.setId(id);
		materialService.updateMaterial(dto);
		
		List<MaterialFileDto> materialFileList = new ArrayList<>();
		if (file != null && !file.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file);
	        materialService.deleteMaterialFileOne(delFile);
	        materialFileList.add(new MaterialFileDto(id, fileDto.getId()));
	    }
		
		if(materialFileList != null && !materialFileList.isEmpty()) {
			materialService.insertMaterialFiles(materialFileList);
   		}
		System.out.println(file);
		return "redirect:/category/"+category+"/material";
	}
	
	@RequestMapping(value = "/{category}/material/delete/{id}", method = RequestMethod.POST)
	public String materialDelete(@PathVariable("category") int category, @PathVariable("id") int id, @AuthenticationPrincipal CustomUserDetails user) {
		// 권한 체크: 자료 조회 후 작성자 확인
		MaterialDto existingMaterial = materialService.selectMaterialOne(id);
		if(existingMaterial == null) {
			return "error/404";
		}
		if(user == null || !existingMaterial.getPartnerId().equals(user.getUsername())) {
			return "error/404";
		}
		
		materialService.deleteMaterial(id);
		return "redirect:/category/" + category + "/material";
	}
}
