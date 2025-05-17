package net.ktop.ktop.module.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@RequestMapping(value = "", method = {RequestMethod.GET})
	public String notice() {
		return "notice/notice/notices";
	}
	
	@RequestMapping(value = "/{id}", method = {RequestMethod.GET})
	public String notice(@PathVariable("id") String id) {
		return "notice/notice/notice";
	}
	
	@RequestMapping(value = "/write", method = {RequestMethod.GET})
	public String noticeWrite() {
		return "notice/notice/write";
	}
	
	@RequestMapping(value = "/edit/{id}", method = {RequestMethod.GET})
	public String noticeEdit(@PathVariable("id") String id) {
		return "notice/notice/edit";
	}
	
	@RequestMapping(value = "/delete/{id}", method = {RequestMethod.GET})
	public String noticeDelete(@PathVariable("id") String id) {
		return "redirect:/notice";
	}
	
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
	
	@RequestMapping(value = "/qna", method = {RequestMethod.GET})
	public String qna() {
		return "notice/qna/qnas";
	}
	
	@RequestMapping(value = "/qna/{id}", method = {RequestMethod.GET})
	public String qna(@PathVariable("id") String id) {
		return "notice/qna/qna";
	}
	
	@RequestMapping(value = "/qna/write", method = {RequestMethod.GET})
	public String qnaWrite() {
		return "notice/qna/write";
	}
	
	@RequestMapping(value = "/qna/edit/{id}", method = {RequestMethod.GET})
	public String qnaEdit(@PathVariable("id") String id) {
		return "notice/qna/edit";
	}
	
	@RequestMapping(value = "/qna/reply/delete/{id}", method = {RequestMethod.GET})
	@ResponseBody
	public String qnaReplyDelete(@PathVariable("id") String id) {
		return "0";
	}
	
	@RequestMapping(value = "/qna/delete/{id}", method = {RequestMethod.GET})
	public String qnaDelete(@PathVariable("id") String id) {
		return "redirect:/notice/qna";
	}
	
	@RequestMapping(value = "/company", method = {RequestMethod.GET})
	public String company() {
		return "notice/company/company";
	}
}
