package net.ktop.ktop.module.web.main;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.admin.material.AdminMaterialDto;
import net.ktop.ktop.module.web.admin.material.AdminMaterialService;
import net.ktop.ktop.module.web.material.MaterialDto;
import net.ktop.ktop.module.web.material.MaterialService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
public class MainController {
	
	private final RegionService regionService;
	private final AdminMaterialService adminMaterialService;
	private final MaterialService materialService;
	
	@Autowired
	public MainController(RegionService regionService, AdminMaterialService adminMaterialService, MaterialService materialService) {
		this.regionService = regionService;
		this.adminMaterialService = adminMaterialService;
		this.materialService = materialService;
	}

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @AuthenticationPrincipal CustomUserDetails user) {
		
		List<RegionDto> regionList = regionService.getAllRegion();
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("materialList", materialList);
		return "main/home";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model, @AuthenticationPrincipal UserDetails user, MaterialDto dto) {
		
		System.out.println("search : "+dto);
		List<MaterialDto> materials = materialService.selectMaterialList(dto);
		//model.addAttribute("serverTime", formattedDate );
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
		List<RegionDto> regionList = regionService.getAllRegion();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("materialList", materialList);
		model.addAttribute("materials", materials);;
		
		return "main/search";
	}
	
}
