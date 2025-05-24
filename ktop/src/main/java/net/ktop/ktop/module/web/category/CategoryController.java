package net.ktop.ktop.module.web.category;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@RequestMapping(value = "/{category}",  method = {RequestMethod.GET})
	public String category(@PathVariable("category") String category, Model model) {
		return "category/category";
	}
	
	@RequestMapping(value = "/{category}/guide",  method = {RequestMethod.GET})
	public String categoryGuide(@PathVariable("category") String category, Model model) {
		return "category/guide";
	}
	
	@RequestMapping(value = "/{category}/join",  method = {RequestMethod.GET})
	public String categoryJoin(@PathVariable("category") String category, Model model) {
		return "category/join";
	}
}
