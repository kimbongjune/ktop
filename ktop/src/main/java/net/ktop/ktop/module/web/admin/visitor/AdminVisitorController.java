package net.ktop.ktop.module.web.admin.visitor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/site/visitor")
public class AdminVisitorController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String visitorIndex(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/index";
    }

    @RequestMapping(value = "/domain", method = RequestMethod.GET)
    public String visitorDomain(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/domain";
    }

    @RequestMapping(value = "/browser", method = RequestMethod.GET)
    public String visitorBrowser(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/browser";
    }

    @RequestMapping(value = "/os", method = RequestMethod.GET)
    public String visitorOs(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/os";
    }

    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public String visitorTime(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/time";
    }

    @RequestMapping(value = "/date", method = RequestMethod.GET)
    public String visitorDate(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/date";
    }

    @RequestMapping(value = "/day", method = RequestMethod.GET)
    public String visitorDay(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/day";
    }

    @RequestMapping(value = "/month", method = RequestMethod.GET)
    public String visitorMonth(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/month";
    }

    @RequestMapping(value = "/year", method = RequestMethod.GET)
    public String visitorYear(Model model) {
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        return "admin/site/visitor/year";
    }
}
