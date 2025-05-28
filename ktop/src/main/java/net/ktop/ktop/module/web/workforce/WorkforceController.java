package net.ktop.ktop.module.web.workforce;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/workforce")
public class WorkforceController {
	
	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String workforce(Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/workforces";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String workforce(@PathVariable("id") String id, Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/workforce";
	}
	
	@RequestMapping(value = "/mine", method = {RequestMethod.GET})
	public String workforceMine(Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/mine";
	}
	
	@RequestMapping(value = "/regist", method = {RequestMethod.GET})
	public String workforceRegist(Model model) {
		model.addAttribute("menuCategory", "workforce");
		return "workforce/regist";
	}
}
