package net.ktop.ktop.module.web.admin.material;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/material")
public class AdminMaterialController {
	
	private final AdminMaterialService adminMaterialService;
	
	@Autowired
    public AdminMaterialController(AdminMaterialService adminMaterialService) {
		this.adminMaterialService = adminMaterialService;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
    public String materialIndex(Model model) {
		
		List<AdminMaterialDto> materialList = adminMaterialService.getAllMaterial();
	
		model.addAttribute("materialList", materialList);
        model.addAttribute("activeMenu", "material");
        return "admin/material/material";
    }
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<AdminMaterialDto> siteCategoryAdd(Model model, @RequestBody AdminMaterialDto dto) {
		adminMaterialService.addMaterial(dto);
        return ResponseEntity.ok(dto);
    }
    
    @RequestMapping(value = "/del", method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<?> siteCategoryDel(Model model, @RequestParam int id) {
    	int result = adminMaterialService.deleteMaterial(id);
        return ResponseEntity.ok(result);
    }
    
    @RequestMapping(value = "/mod", method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<?> siteCategoryMod(Model model, @RequestBody AdminMaterialDto dto) {
    	int result = adminMaterialService.updateMaterial(dto);
        return ResponseEntity.ok(result);
    }
}
