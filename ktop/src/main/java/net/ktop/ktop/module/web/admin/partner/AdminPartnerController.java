package net.ktop.ktop.module.web.admin.partner;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/partner")
public class AdminPartnerController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String partnerList(Model model) {
        model.addAttribute("activeMenu", "partner");
        return "admin/partner/partners";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String partnerDetail(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "partner");
        return "admin/partner/partner";
    }

    @RequestMapping(value = "/{id}/product", method = RequestMethod.GET)
    public String partnerProduct(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "partner");
        return "admin/partner/product";
    }
}
