package net.ktop.ktop.module.web.material;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/material")
public class MaterialController {
	
	@RequestMapping(value = "",  method = {RequestMethod.GET})
	public String materials() {
		return "material/materials";
	}

	@RequestMapping(value = "/category/{category}",  method = {RequestMethod.GET})
	public String materials(@PathVariable("category") String category, Model model) {
		return "material/materials";
	}
	
	@RequestMapping(value = "/{materialId}",  method = {RequestMethod.GET})
	public String material(@PathVariable("materialId") String materialId) {
		return "material/material";
	}
}
