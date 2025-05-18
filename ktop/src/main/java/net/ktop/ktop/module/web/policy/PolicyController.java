package net.ktop.ktop.module.web.policy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/policy")
public class PolicyController {
	
	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String policy() {
		return "policy/policy";
	}
	
	@RequestMapping(value = "/terms", method = {RequestMethod.GET})
	public String terms() {
		return "policy/terms";
	}
	
	@RequestMapping(value = "/email", method = {RequestMethod.GET})
	public String email() {
		return "policy/email";
	}
}
