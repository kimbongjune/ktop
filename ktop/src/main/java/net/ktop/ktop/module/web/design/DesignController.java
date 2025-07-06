package net.ktop.ktop.module.web.design;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/design")
public class DesignController {
	
	@GetMapping("")
	public String design(Model model) {
		model.addAttribute("menuCategory", "design");
		return "design/design";
	}
}
