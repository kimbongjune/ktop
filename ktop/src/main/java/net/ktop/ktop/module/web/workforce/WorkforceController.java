package net.ktop.ktop.module.web.workforce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldDto;
import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldService;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;

@Controller
@RequestMapping("/workforce")
public class WorkforceController {
	
	private final AdminWorkFieldService adminWorkFieldService;
	private final RegionService regionService;
	private final WorkerService workerService;
	
	@Autowired
	public WorkforceController(AdminWorkFieldService adminWorkFieldService, RegionService regionService, WorkerService workerService) {
		this.adminWorkFieldService = adminWorkFieldService;
		this.regionService = regionService;
		this.workerService = workerService;
	}

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String workforce(Model model, @RequestParam(name="cat", required=false) String cat, @RequestParam(name="region", required=false) String region) {
		List<AdminWorkFieldDto> workFieldList = adminWorkFieldService.getAllWorkField();
		List<RegionDto> regionList = regionService.getAllRegion();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("workFieldList", workFieldList);
		model.addAttribute("menuCategory", "workforce");
		model.addAttribute("cat", cat);
		model.addAttribute("region", region);
		return "workforce/workforces";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String workforce(@PathVariable("id") String id, Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/workforce";
	}
	
	@RequestMapping(value = "/mine", method = {RequestMethod.GET})
	public String workforceMine(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		WorkerDto dto = null;
		if(user != null) {
			WorkerDto searchDto = new WorkerDto();
			searchDto.setUserId(user.getUsername());
			dto = workerService.getWorkerList(searchDto);
		}
		model.addAttribute("worker", dto);
		model.addAttribute("menuCategory", "workforce");
		return "workforce/mine";
	}
	
	@RequestMapping(value = "/regist", method = {RequestMethod.GET})
	public String workforceRegist(Model model) {
		List<AdminWorkFieldDto> workFieldList = adminWorkFieldService.getAllWorkField();
		List<RegionDto> regionList = regionService.getAllRegion();
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("workFieldList", workFieldList);
		model.addAttribute("menuCategory", "workforce");
		return "workforce/regist";
	}
	
	@RequestMapping(value = "/edit", method = {RequestMethod.GET})
	public String workforceEdit(Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/edit";
	}
}
