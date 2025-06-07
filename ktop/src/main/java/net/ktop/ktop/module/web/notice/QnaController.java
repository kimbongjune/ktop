package net.ktop.ktop.module.web.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/notice")
public class QnaController {
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
}
