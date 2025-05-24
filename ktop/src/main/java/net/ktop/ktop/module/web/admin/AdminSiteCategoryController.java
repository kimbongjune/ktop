package net.ktop.ktop.module.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/site/category")
public class AdminSiteCategoryController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String siteCategory(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "category");
        return "admin/site/category/category";
    }
}
