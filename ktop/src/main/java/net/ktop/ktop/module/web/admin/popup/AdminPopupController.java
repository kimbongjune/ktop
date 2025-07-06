package net.ktop.ktop.module.web.admin.popup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.ktop.ktop.module.web.popup.PopupDto;
import net.ktop.ktop.module.web.popup.PopupService;

@Controller
@RequestMapping("/admin/site/popup")
public class AdminPopupController {

    private final PopupService popupService;

    @Autowired
    public AdminPopupController(PopupService popupService) {
        this.popupService = popupService;
    }

    @GetMapping
    public String popupList(Model model, PopupDto params) {
        List<PopupDto> popupList = popupService.getPopupList(params);
        model.addAttribute("popupList", popupList);
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/index";
    }

    @GetMapping("/write")
    public String popupWrite(Model model) {
        model.addAttribute("popup", new PopupDto());
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/write";
    }

    @PostMapping("/write")
    public String popupWriteSubmit(@ModelAttribute PopupDto popup) {
        popupService.createPopup(popup);
        return "redirect:/admin/site/popup";
    }

    @GetMapping("/edit/{id}")
    public String popupEdit(@PathVariable("id") int id, Model model) {
        PopupDto popup = popupService.getPopup(id);
        model.addAttribute("popup", popup);
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "popup");
        return "admin/site/popup/edit";
    }

    @PostMapping("/edit/{id}")
    public String popupEditSubmit(@ModelAttribute PopupDto popup, @PathVariable("id") int id) {
        popup.setId(id);
        popupService.updatePopup(popup);
        return "redirect:/admin/site/popup";
    }
    
    @GetMapping("/del/{id}")
    public String delete(@PathVariable int id) {
    	popupService.deletePopup(id);
    	return "redirect:/admin/site/popup";
    }
}
