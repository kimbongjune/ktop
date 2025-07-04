package net.ktop.ktop.module.web.admin.region;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.region.RegionService;
import net.ktop.ktop.module.web.region.RegionDto;

@Controller
@RequestMapping("/admin/region")
public class AdminRegionController {
	
	@Autowired
	private final RegionService service;
	
    public AdminRegionController(RegionService service) {
		this.service = service;
	}

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String regionIndex(Model model) {
        model.addAttribute("activeMenu", "region");
        List<RegionDto> regionList = service.getAllRegion();
        model.addAttribute("regionList", regionList);
        
        System.out.println(regionList);
        return "admin/region/region";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<RegionDto> siteRegionAdd(Model model, @RequestBody RegionDto dto) {
    	service.addRegion(dto);
        return ResponseEntity.ok(dto);
    }
    
    @RequestMapping(value = "/del", method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<?> siteRegionDel(Model model, @RequestParam int id) {
    	int result = service.deleteRegion(id);
        return ResponseEntity.ok(result);
    }
    
    @RequestMapping(value = "/mod", method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<?> siteRegionMod(Model model, @RequestBody RegionDto dto) {
    	int result = service.updateRegion(dto);
        return ResponseEntity.ok(result);
    }
}
