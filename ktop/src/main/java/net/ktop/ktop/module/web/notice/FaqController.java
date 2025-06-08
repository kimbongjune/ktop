package net.ktop.ktop.module.web.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ktop.ktop.module.security.CustomUserDetails;
import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.faq.FaqPostDto;
import net.ktop.ktop.module.web.faq.FaqPostService;

@Controller
@RequestMapping("/notice")
public class FaqController {
	
	private final FaqPostService faqPostService;
	
	@Autowired
	public FaqController(FaqPostService faqPostService) {
		this.faqPostService = faqPostService;
	}

	@RequestMapping(value = "/faq", method = {RequestMethod.GET})
	public String faq(Model model, BoardPostSearchDto dto) {
		List<FaqPostDto> faqs = faqPostService.selectFaqPostList(dto);
		
		model.addAttribute("faqs", faqs);
		return "notice/faq/faq";
	}
	
	@RequestMapping(value = "/faq/write", method = {RequestMethod.GET})
	public String faqWrite() {
		return "notice/faq/write";
	}
	
	@RequestMapping(value = "/faq/write", method = {RequestMethod.POST})
	public String faqWrite(@ModelAttribute FaqPostDto dto, @AuthenticationPrincipal CustomUserDetails user) {
		dto.setUserId(user.getUsername());
		faqPostService.insertFaqPost(dto);
		
		return "redirect:/notice/faq";
	}
	
	@RequestMapping(value = "/faq/edit/{id}", method = {RequestMethod.GET})
	public String faqEdit(@PathVariable("id") int id, Model model) {
		FaqPostDto faq = faqPostService.selectFaqPostOne(id);
		
		model.addAttribute("faq", faq);
		return "notice/faq/edit";
	}
	
	@RequestMapping(value = "/faq/edit/{id}", method = {RequestMethod.POST})
	public String faqEdit(@PathVariable("id") int id, @ModelAttribute FaqPostDto dto) {
		faqPostService.updateFaqPost(dto);
		
		return "redirect:/notice/faq";
	}
	
	@RequestMapping(value = "/faq/delete/{id}", method = {RequestMethod.POST})
	public String faqDelete(@PathVariable("id") int id) {
		faqPostService.deleteFaqPost(id);
		return "redirect:/notice/faq";
	}
}
