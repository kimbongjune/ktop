package net.ktop.ktop.module.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class CompanyController {
	@RequestMapping(value = "/company", method = {RequestMethod.GET})
	public String company() {
		return "notice/company/company";
	}
}
