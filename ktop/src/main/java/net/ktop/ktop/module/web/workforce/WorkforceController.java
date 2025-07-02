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
import net.ktop.ktop.module.web.workforce.workfield.WorkFieldDto;
import net.ktop.ktop.module.web.workforce.workfield.WorkFieldService;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.region.RegionDto;
import net.ktop.ktop.module.web.region.RegionService;
import net.ktop.ktop.module.web.workforce.file.WorkerFileDto;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldDto;

@Controller
@RequestMapping("/workforce")
public class WorkforceController {
	
	private final WorkFieldService workFieldService;
	private final RegionService regionService;
	private final WorkerService workerService;
	private final FileService fileService;
	
	@Autowired
	public WorkforceController(WorkFieldService workFieldService, RegionService regionService, WorkerService workerService, FileService fileService) {
		this.workFieldService = workFieldService;
		this.regionService = regionService;
		this.workerService = workerService;
		this.fileService = fileService;
	}

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String workforce(Model model, @ModelAttribute WorkerDto dto,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "12") int size) {
		List<WorkFieldDto> workFieldList = workFieldService.getAllWorkField();
		List<RegionDto> regionList = regionService.getAllRegion();
		
		dto.setStatus("approved");
		dto.setPage(page);
		dto.setSize(size);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = workerService.selectWorkerCount(dto);
		dto.getPagination().setTotalCount(totalCount);
		
		List<WorkerDto> worker = workerService.selectWorkerList(dto);
		
		model.addAttribute("regionList", regionList);
		model.addAttribute("workFieldList", workFieldList);
		model.addAttribute("menuCategory", "workforce");
		model.addAttribute("fieldId", dto.getFieldId());
		model.addAttribute("regionId", dto.getRegionId());
		model.addAttribute("workers", worker);
		model.addAttribute("pagination", dto.getPagination());
		model.addAttribute("searchDto", dto);
		return "workforce/workforces";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String workforce(@PathVariable("id") String id, Model model) {
		WorkerDto dto = new WorkerDto();
		dto.setUserId(id);
		WorkerDto worker = workerService.selectWorkerOne(dto);
		if(worker == null) {
			return "error/404";
		}
		model.addAttribute("worker", worker);
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
		List<WorkFieldDto> workFieldList = workFieldService.getAllWorkField();
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
		List<WorkFieldDto> workFieldList = workFieldService.getAllWorkField();
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
		
		// 기존 워커 필드 삭제 후 새로 추가
		workerService.deleteWorkerField(user.getUsername());
		
		WorkerFieldDto dto = new WorkerFieldDto();
		dto.setWorkFieldList(workField);
		dto.setUserId(user.getUsername());
		workerService.insertWorkerField(dto);
		
		List<WorkerFileDto> workerFileList = new ArrayList<>();
		if (file1 != null && !file1.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file1);
	        if (delFile1 != null && !delFile1.trim().isEmpty()) {
	            workerService.deleteWorkerFileOne(delFile1);
	        }
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 1));
	    }

	    if (file2 != null && !file2.isEmpty()) {
	        FileDto fileDto = fileService.saveUploadedFile(file2);
	        if (delFile2 != null && !delFile2.trim().isEmpty()) {
	            workerService.deleteWorkerFileOne(delFile2);
	        }
	        workerFileList.add(new WorkerFileDto(workerDto.getUserId(), fileDto.getId(), 2));
	    }
	    
	    if(workerFileList != null && !workerFileList.isEmpty()) {
	    	workerService.insertWorkerFiles(workerFileList);
   		}
		return "redirect:/workforce/mine";
	}
}
