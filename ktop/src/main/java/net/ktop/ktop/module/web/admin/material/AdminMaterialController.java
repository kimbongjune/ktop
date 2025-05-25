package net.ktop.ktop.module.web.admin.material;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/material")
public class AdminMaterialController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String materialIndex(Model model) {
        model.addAttribute("activeMenu", "material");
        return "admin/material/index";
    }
}
