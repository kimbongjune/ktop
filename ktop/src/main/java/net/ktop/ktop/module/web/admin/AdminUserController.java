package net.ktop.ktop.module.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/user")
public class AdminUserController {

    @RequestMapping(value = "/common", method = RequestMethod.GET)
    public String userCommon(Model model) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        return "admin/user/common/index";
    }

    @RequestMapping(value = "/common/add", method = RequestMethod.GET)
    public String userCommonAdd(Model model) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        return "admin/user/common/add";
    }

    @RequestMapping(value = "/common/mod/{id}", method = RequestMethod.GET)
    public String userCommonMod(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userCommon");
        return "admin/user/common/mod";
    }

    @RequestMapping(value = "/partner", method = RequestMethod.GET)
    public String userPartner(Model model, @RequestParam(required = false) String status) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        model.addAttribute("status", status);
        return "admin/user/partner/index";
    }

    @RequestMapping(value = "/partner/add", method = RequestMethod.GET)
    public String userPartnerAdd(Model model) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        return "admin/user/partner/add";
    }

    @RequestMapping(value = "/partner/mod/{id}", method = RequestMethod.GET)
    public String userPartnerMod(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "user");
        model.addAttribute("activeSubMenu", "userPartner");
        return "admin/user/partner/mod";
    }
}
