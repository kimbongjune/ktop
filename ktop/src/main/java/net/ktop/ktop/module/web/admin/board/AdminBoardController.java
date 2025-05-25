package net.ktop.ktop.module.web.admin.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String boardList(Model model) {
        model.addAttribute("activeMenu", "board");
        return "admin/board/boards";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String boardDetail(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "board");
        return "admin/board/board";
    }

    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String boardWrite(Model model) {
        model.addAttribute("activeMenu", "board");
        return "admin/board/write";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String boardEdit(Model model, @PathVariable String id) {
        model.addAttribute("activeMenu", "board");
        return "admin/board/write";
    }
}
