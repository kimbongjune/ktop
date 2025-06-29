package net.ktop.ktop.module.web.admin.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.category.CategoryService;
import net.ktop.ktop.module.web.category.CategoryDto;

@Controller
@RequestMapping("/admin/site/category")
public class AdminSiteCategoryController {
	
	@Autowired
	private final CategoryService service;
	
    public AdminSiteCategoryController(CategoryService service) {
		this.service = service;
	}

	@RequestMapping(value = "", method = RequestMethod.GET)
    public String siteCategory(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "category");
        
        List<CategoryDto> categoryList = service.getAllCategory();
        
        model.addAttribute("categoryList", categoryList);
        System.out.println(categoryList);
        
        return "admin/site/category/category";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<CategoryDto> siteCategoryAdd(Model model, @RequestBody CategoryDto dto) {
    	service.addCategory(dto);
        return ResponseEntity.ok(dto);
    }
    
    @RequestMapping(value = "/del", method = RequestMethod.DELETE)
    @ResponseBody
    public ResponseEntity<?> siteCategoryDel(Model model, @RequestParam int id) {
    	int result = service.deleteCategory(id);
        return ResponseEntity.ok(result);
    }
    
    @RequestMapping(value = "/mod", method = RequestMethod.PUT)
    @ResponseBody
    public ResponseEntity<?> siteCategoryMod(Model model, @RequestBody CategoryDto dto) {
    	int result = service.updateCategory(dto);
        return ResponseEntity.ok(result);
    }
}
