package net.ktop.ktop.module.web.admin.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.board.BoardPostDto;
import net.ktop.ktop.module.web.board.BoardPostSearchDto;
import net.ktop.ktop.module.web.board.BoardPostService;

@Controller
@RequestMapping("/admin/board")
public class AdminBoardController {

    private final BoardPostService boardPostService;
    
    @Autowired
    public AdminBoardController(BoardPostService boardPostService) {
        this.boardPostService = boardPostService;
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String boardList(Model model, BoardPostSearchDto dto,
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "size", defaultValue = "10") int size) {
        dto.setPage(page);
        dto.setSize(size);
        
        // 전체 개수 조회 및 페이징 정보 설정
        int totalCount = boardPostService.selectBoardPostCount(dto);
        dto.getPagination().setTotalCount(totalCount);
        
        List<BoardPostDto> boards = boardPostService.selectBoardPostList(dto);
        
        model.addAttribute("activeMenu", "board");
        model.addAttribute("boards", boards);
        model.addAttribute("pagination", dto.getPagination());
        model.addAttribute("searchDto", dto);
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
