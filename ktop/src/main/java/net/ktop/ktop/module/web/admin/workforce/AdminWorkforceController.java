package net.ktop.ktop.module.web.admin.workforce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldDto;
import net.ktop.ktop.module.web.admin.workforce.workfield.AdminWorkFieldService;
import net.ktop.ktop.module.web.workforce.WorkerDto;
import net.ktop.ktop.module.web.workforce.WorkerService;

@Controller
@RequestMapping("/admin/workforce")
public class AdminWorkforceController {
	
	private final AdminWorkFieldService adminWorkFieldService;
	private final WorkerService workerService;
	
	@Autowired
    public AdminWorkforceController(AdminWorkFieldService adminWorkFieldService, WorkerService workerService) {
		this.adminWorkFieldService = adminWorkFieldService;
		this.workerService = workerService;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
    public String workforceList(Model model, WorkerDto dto) {
		List<WorkerDto> worker = workerService.selectWorkerList(dto);
		
		model.addAttribute("workers", worker);
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceMain");
        return "admin/workforce/workforces";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String workforceDetail(Model model, @PathVariable String id) {
    	
    	WorkerDto worker = workerService.getWorkerOne(id);
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceMain");
        model.addAttribute("worker", worker);
        return "admin/workforce/workforce";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.POST)
    public String workforceDetail(Model model, @PathVariable String id, @RequestParam(value="alarmText", required=false) String alarmText, @RequestParam("status") String status) {
    	
    	WorkerDto dto = new WorkerDto();
    	dto.setUserId(id);
    	dto.setStatus(status);
    	workerService.updateWorker(dto);
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceMain");
        return "redirect:/admin/workforce/"+id;
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String workforceCategory(Model model) {
    	
    	List<AdminWorkFieldDto> workFieldList = adminWorkFieldService.getAllWorkField();
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceCategory");
        model.addAttribute("workFieldList", workFieldList);
        return "admin/workforce/category";
    }
    
    @RequestMapping(value = "/category/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<AdminWorkFieldDto> siteCategoryAdd(Model model, @RequestBody AdminWorkFieldDto dto) {
    	adminWorkFieldService.addWorkField(dto);
        return ResponseEntity.ok(dto);
    }
    
    @RequestMapping(value = "/category/del", method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<?> siteCategoryDel(Model model, @RequestParam int id) {
    	int result = adminWorkFieldService.deleteWorkField(id);
        return ResponseEntity.ok(result);
    }
    
    @RequestMapping(value = "/category/mod", method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<?> siteCategoryMod(Model model, @RequestBody AdminWorkFieldDto dto) {
    	int result = adminWorkFieldService.updateWorkField(dto);
        return ResponseEntity.ok(result);
    }
}
