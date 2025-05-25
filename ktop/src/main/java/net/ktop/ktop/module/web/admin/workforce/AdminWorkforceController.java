package net.ktop.ktop.module.web.admin.workforce;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/workforce")
public class AdminWorkforceController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String workforceList(Model model) {
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceMain");
        return "admin/workforce/workforces";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String workforceDetail(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceMain");
        return "admin/workforce/workforce";
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String workforceCategory(Model model) {
        model.addAttribute("activeMenu", "workforce");
        model.addAttribute("activeSubMenu", "workforceCategory");
        return "admin/workforce/category";
    }
}
