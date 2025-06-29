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
import org.springframework.web.bind.annotation.RequestParam;

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
	public String faq(Model model, BoardPostSearchDto dto,
			@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "size", defaultValue = "10") int size) {
		dto.setPage(page);
		dto.setSize(size);
		
		// 전체 개수 조회 및 페이징 정보 설정
		int totalCount = faqPostService.selectFaqPostCount(dto);
		dto.getPagination().setTotalCount(totalCount);
		
		List<FaqPostDto> faqs = faqPostService.selectFaqPostList(dto);
		
		model.addAttribute("faqs", faqs);
		model.addAttribute("pagination", dto.getPagination());
		model.addAttribute("searchDto", dto);
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
		if(faq == null) {
			return "error/404";
		}
		
		model.addAttribute("faq", faq);
		return "notice/faq/edit";
	}
	
	@RequestMapping(value = "/faq/edit/{id}", method = {RequestMethod.POST})
	public String faqEdit(@PathVariable("id") int id, @ModelAttribute FaqPostDto dto, @AuthenticationPrincipal CustomUserDetails user) {
		// 권한 체크: FAQ 조회 후 작성자 확인
		FaqPostDto existingFaq = faqPostService.selectFaqPostOne(id);
		if(existingFaq == null) {
			return "error/404";
		}
		if(user == null || !existingFaq.getUserId().equals(user.getUsername())) {
			return "error/404";
		}
		
		dto.setId(id);
		faqPostService.updateFaqPost(dto);
		
		return "redirect:/notice/faq";
	}
	
	@RequestMapping(value = "/faq/delete/{id}", method = {RequestMethod.POST})
	public String faqDelete(@PathVariable("id") int id, @AuthenticationPrincipal CustomUserDetails user) {
		// 권한 체크: FAQ 조회 후 작성자 확인
		FaqPostDto existingFaq = faqPostService.selectFaqPostOne(id);
		if(existingFaq == null) {
			return "error/404";
		}
		if(user == null || !existingFaq.getUserId().equals(user.getUsername())) {
			return "error/404";
		}
		
		faqPostService.deleteFaqPost(id);
		return "redirect:/notice/faq";
	}
}
