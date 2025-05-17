package net.ktop.ktop.module.web.workforce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/workforce")
public class WorkforceController {
	
	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String workforce() {
		return "workforce/workforces";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String workforce(@PathVariable("id") String id) {
		return "workforce/workforce";
	}
	
	@RequestMapping(value = "/mine", method = {RequestMethod.GET})
	public String workforceMine() {
		return "workforce/mine";
	}
	
	@RequestMapping(value = "/regist", method = {RequestMethod.GET})
	public String workforceRegist() {
		return "workforce/regist";
	}
}
