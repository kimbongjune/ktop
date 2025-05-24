package net.ktop.ktop.module.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/site/popup")
public class AdminPopupController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String popupList(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/index";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String popupWrite(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/write";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String popupEdit(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/edit";
    }
}
