package net.ktop.ktop.module.web.admin.history;

import net.ktop.ktop.module.web.admin.site.history.SiteHistoryDto;
import net.ktop.ktop.module.web.admin.site.history.SiteHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;
import java.time.LocalDateTime;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/admin/site/history")
public class AdminHistoryController {

    private static final Logger logger = LoggerFactory.getLogger(AdminHistoryController.class);
    private final SiteHistoryService siteHistoryService;
    
    @Autowired
    public AdminHistoryController(SiteHistoryService siteHistoryService) {
        this.siteHistoryService = siteHistoryService;
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String siteHistory(Model model, SiteHistoryDto dto) {
        
        logger.info("Received dto: {}", dto);
        
        // 페이징 설정
        if (dto.getPage() == 0) dto.setPage(1);
        if (dto.getSize() == 0) dto.setSize(10);
        
        // 히스토리 목록 조회
        List<SiteHistoryDto> historyList = siteHistoryService.selectSiteHistoryList(dto);
        int totalCount = siteHistoryService.selectSiteHistoryCount(dto);
        
        // 페이징 정보 설정
        dto.getPagination().setTotalCount(totalCount);
        
        model.addAttribute("historyList", historyList);
        model.addAttribute("pagination", dto.getPagination());
        model.addAttribute("searchDto", dto);
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "history");
        
        return "admin/history/index";
    }
    

}
