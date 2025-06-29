package net.ktop.ktop.module.web.material;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;

@Controller
@RequestMapping("/material")
public class MaterialController {
	
	private final MaterialService materialService;
	
	@Autowired
	public MaterialController(MaterialService materialService) {
		this.materialService = materialService;
	}

	@RequestMapping(value = "",  method = {RequestMethod.GET})
	public String materials() {
		return "material/materials";
	}

	@RequestMapping(value = "/category/{category}",  method = {RequestMethod.GET})
	public String materials(@PathVariable("category") String category, Model model) {
		return "material/materials";
	}
	
	@RequestMapping(value = "/{materialId}",  method = {RequestMethod.GET})
	public String material(@PathVariable("materialId") int materialId, @AuthenticationPrincipal CustomUserDetails user, Model model) {
		MaterialDto material = materialService.selectMaterialOne(materialId);
		if(material == null) {
			return "error/404";
		}
		model.addAttribute("material", material);
		return "material/material";
	}
}
