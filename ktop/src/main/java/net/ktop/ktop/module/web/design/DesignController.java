package net.ktop.ktop.module.web.design;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/design")
public class DesignController {
	
	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String design() {
		return "design/design";
	}
}
