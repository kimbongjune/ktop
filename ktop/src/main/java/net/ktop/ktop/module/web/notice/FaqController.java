package net.ktop.ktop.module.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/notice")
public class FaqController {
	@RequestMapping(value = "/faq", method = {RequestMethod.GET})
	public String faq() {
		return "notice/faq/faq";
	}
	
	@RequestMapping(value = "/faq/write", method = {RequestMethod.GET})
	public String faqWrite() {
		return "notice/faq/write";
	}
	
	@RequestMapping(value = "/faq/edit/{id}", method = {RequestMethod.GET})
	public String faqEdit(@PathVariable("id") String id) {
		return "notice/faq/edit";
	}
	
	@RequestMapping(value = "/faq/delete/{id}", method = {RequestMethod.GET})
	public String faqDelete(@PathVariable("id") String id) {
		return "redirect:/notice/faq";
	}
}
