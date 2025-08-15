package net.ktop.ktop.module.web.admin.visitor;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsDto;
import net.ktop.ktop.module.web.admin.visitor.VisitorStatisticsService;

@Controller
@RequestMapping("/admin/site/visitor")
public class AdminVisitorController {

    @Autowired
    private VisitorStatisticsService visitorStatisticsService;
    
    /**
     * 기본 기간 설정 (일주일 전 ~ 오늘)
     */
    private String[] getDefaultDateRange() {
        LocalDate today = LocalDate.now();
        LocalDate weekAgo = today.minusDays(7);
        
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String endDate = today.format(formatter);
        String startDate = weekAgo.format(formatter);
        
        return new String[]{startDate, endDate};
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String visitorIndex(Model model, 
                             @RequestParam(value = "startDate", required = false) String startDate,
                             @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> visitorLogs = visitorStatisticsService.getVisitorLogs(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("visitorLogs", visitorLogs);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/index";
    }

    @RequestMapping(value = "/domain", method = RequestMethod.GET)
    public String visitorDomain(Model model,
                              @RequestParam(value = "startDate", required = false) String startDate,
                              @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> domainStats = visitorStatisticsService.getDomainStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("domainStats", domainStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/domain";
    }

    @RequestMapping(value = "/browser", method = RequestMethod.GET)
    public String visitorBrowser(Model model,
                               @RequestParam(value = "startDate", required = false) String startDate,
                               @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> browserStats = visitorStatisticsService.getBrowserStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("browserStats", browserStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/browser";
    }

    @RequestMapping(value = "/os", method = RequestMethod.GET)
    public String visitorOs(Model model,
                          @RequestParam(value = "startDate", required = false) String startDate,
                          @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> osStats = visitorStatisticsService.getOsStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("osStats", osStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/os";
    }

    @RequestMapping(value = "/time", method = RequestMethod.GET)
    public String visitorTime(Model model,
                            @RequestParam(value = "startDate", required = false) String startDate,
                            @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> hourlyStats = visitorStatisticsService.getHourlyStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("hourlyStats", hourlyStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/time";
    }

    @RequestMapping(value = "/date", method = RequestMethod.GET)
    public String visitorDate(Model model,
                            @RequestParam(value = "startDate", required = false) String startDate,
                            @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> dailyStats = visitorStatisticsService.getDailyStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("dailyStats", dailyStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/date";
    }

    @RequestMapping(value = "/day", method = RequestMethod.GET)
    public String visitorDay(Model model,
                           @RequestParam(value = "startDate", required = false) String startDate,
                           @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> weekdayStats = visitorStatisticsService.getWeekdayStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("weekdayStats", weekdayStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/day";
    }

    @RequestMapping(value = "/month", method = RequestMethod.GET)
    public String visitorMonth(Model model,
                             @RequestParam(value = "startDate", required = false) String startDate,
                             @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> monthlyStats = visitorStatisticsService.getMonthlyStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("monthlyStats", monthlyStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/month";
    }

    @RequestMapping(value = "/year", method = RequestMethod.GET)
    public String visitorYear(Model model,
                            @RequestParam(value = "startDate", required = false) String startDate,
                            @RequestParam(value = "endDate", required = false) String endDate) {
        
        // 기본 기간 설정
        if (startDate == null || startDate.isEmpty() || endDate == null || endDate.isEmpty()) {
            String[] defaultDates = getDefaultDateRange();
            startDate = defaultDates[0];
            endDate = defaultDates[1];
        }
        
        VisitorStatisticsDto dto = new VisitorStatisticsDto();
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        
        List<VisitorStatisticsDto> yearlyStats = visitorStatisticsService.getYearlyStats(dto);
        
        model.addAttribute("activeMenu", "site");
        model.addAttribute("activeSubMenu", "visitor");
        model.addAttribute("yearlyStats", yearlyStats);
        model.addAttribute("startDate", startDate);
        model.addAttribute("endDate", endDate);
        
        return "admin/site/visitor/year";
    }
}
