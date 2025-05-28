package net.ktop.ktop.module.advice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;

import net.ktop.ktop.module.web.category.CategoryService;

@ControllerAdvice
public class GlobalDataAdvice {

    private final CategoryService categoryService;
    
    @Autowired
    public GlobalDataAdvice(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	@ModelAttribute
    public void addHeaderData(Model model) {
        model.addAttribute("categoryList", categoryService.getAllCategory());
    }
	
	@ExceptionHandler(NumberFormatException.class)
    public String handleNumberFormatException(NumberFormatException ex) {
        return "error/404";
    }
}