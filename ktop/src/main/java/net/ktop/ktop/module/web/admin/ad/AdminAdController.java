package net.ktop.ktop.module.web.admin.ad;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/site/ad")
public class AdminAdController {

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String adMain(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/main";
    }

    @RequestMapping(value = "/popup", method = RequestMethod.GET)
    public String adPopup(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/popup";
    }

    @RequestMapping(value = "/bottom", method = RequestMethod.GET)
    public String adBottom(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/bottom";
    }

    @RequestMapping(value = "/middle", method = RequestMethod.GET)
    public String adMiddle(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/middle";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String adWrite(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/write";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String adEdit(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "ad");
        return "admin/site/ad/edit";
    }
}
