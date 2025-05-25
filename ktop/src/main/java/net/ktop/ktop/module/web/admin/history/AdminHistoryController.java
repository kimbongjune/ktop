package net.ktop.ktop.module.web.admin.history;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/site/history")
public class AdminHistoryController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String siteHistory(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "history");
        return "admin/history/index";
    }
}
