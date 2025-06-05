package net.ktop.ktop.module.web.workforce;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
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
import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldDto;
import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldService;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;
import net.ktop.ktop.module.web.workforce.file.WorkerFileDto;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldDto;

@Controller
@RequestMapping("/workforce")
public class WorkforceController {
	
	private final AdminWorkFieldService adminWorkFieldService;
	private final RegionService regionService;
	private final WorkerService workerService;
	private final FileService fileService;
	
	@Autowired
	public WorkforceController(AdminWorkFieldService adminWorkFieldService, RegionService regionService, WorkerService workerService, FileService fileService) {
		this.adminWorkFieldService = adminWorkFieldService;
		this.regionService = regionService;
		this.workerService = workerService;
		this.fileService = fileService;
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
			dto = workerService.getWorkerOne(user.getUsername());
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
	
	@RequestMapping(value = "/regist", method = {RequestMethod.POST})
	public String workforceRegist(Model model, 
			@ModelAttribute WorkerDto workerDto,
			@RequestParam(value = "workField", required = false) List<Integer> workField, 
			@AuthenticationPrincipal CustomUserDetails user,
			@RequestParam(value = "file1", required = false) MultipartFile file1,
		    @RequestParam(value = "file2", required = false) MultipartFile file2) throws IOException {
		workerDto.setUserId(user.getUsername());
		workerService.insertWorker(workerDto);
		
		WorkerFieldDto dto = new WorkerFieldDto();
		dto.setWorkFieldList(workField);
		dto.setUserId(user.getUsername());
		workerService.insertWorkerField(dto);
		
		List<WorkerFileDto> workerFileList = new ArrayList<>();
		if (file1 != null && !file1.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file1);
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 1));
	    }

	    if (file2 != null && !file2.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file2);
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 2));
	    }
	    
	    if(workerFileList != null && !workerFileList.isEmpty()) {
	    	workerService.insertWorkerFiles(workerFileList);
   		}
		
		return "redirect:/workforce/mine";
	}
	
	@RequestMapping(value = "/edit", method = {RequestMethod.GET})
	public String workforceEdit(Model model, @AuthenticationPrincipal CustomUserDetails user) {
		List<AdminWorkFieldDto> workFieldList = adminWorkFieldService.getAllWorkField();
		List<RegionDto> regionList = regionService.getAllRegion();
		WorkerDto dto = null;
		if(user != null) {
			dto = workerService.getWorkerOne(user.getUsername());
		}
		model.addAttribute("worker", dto);
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("workFieldList", workFieldList);
		model.addAttribute("menuCategory", "workforce");
		return "workforce/edit";
	}
	
	@RequestMapping(value = "/edit", method = {RequestMethod.POST})
	public String workforceEdit(Model model, @AuthenticationPrincipal CustomUserDetails user,
			@ModelAttribute WorkerDto workerDto,
			@RequestParam(value = "file1", required = false) MultipartFile file1,
		    @RequestParam(value = "file2", required = false) MultipartFile file2,
		    @RequestParam(value = "delFile1", required = false) String delFile1,
		    @RequestParam(value = "delFile2", required = false) String delFile2,
			@RequestParam(value = "workField", required = false) List<Integer> workField) throws IOException {
		workerDto.setUserId(user.getUsername());
		workerService.updateWorker(workerDto);
		
		WorkerFieldDto dto = new WorkerFieldDto();
		dto.setWorkFieldList(workField);
		dto.setUserId(user.getUsername());
		workerService.insertWorkerField(dto);
		
		List<WorkerFileDto> workerFileList = new ArrayList<>();
		if (file1 != null && !file1.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file1);
	        workerService.deleteWorkerFileOne(delFile1);
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 1));
	    }

	    if (file2 != null && !file2.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file2);
	        workerService.deleteWorkerFileOne(delFile2);
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 2));
	    }
	    
	    if(workerFileList != null && !workerFileList.isEmpty()) {
	    	workerService.insertWorkerFiles(workerFileList);
   		}
		return "redirect:/workforce/mine";
	}
}
