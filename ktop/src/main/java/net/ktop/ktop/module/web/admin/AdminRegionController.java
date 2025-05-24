package net.ktop.ktop.module.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/region")
public class AdminRegionController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String regionIndex(Model model) {
        model.addAttribute("activeMenu", "region");
        return "admin/region/index";
    }
}
