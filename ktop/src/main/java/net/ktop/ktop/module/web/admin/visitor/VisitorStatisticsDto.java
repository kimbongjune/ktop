package net.ktop.ktop.module.web.admin.visitor;

import java.sql.Timestamp;
import net.ktop.ktop.module.util.SearchDto;

/**
 * 방문자 통계 DTO
 */
public class VisitorStatisticsDto extends SearchDto {
    
    private Long id;
    private Timestamp visitDatetime;
    private String visitDate;
    private Integer visitYear;
    private Integer visitMonth;
    private Integer visitDay;
    private Integer visitHour;
    private Integer visitWeekday;
    private String weekday; // 요일명 (일, 월, 화, 수, 목, 금, 토)
    private String ipAddress;
    private String userAgent;
    private String browser;
    private String os;
    private String referer;
    private String pageUrl;
    private String domainType;
    private Timestamp createdAt;
    
    // 검색 조건 (SearchDto의 searchType과 keyword 사용)
    private String startDate;
    private String endDate;
    
    // 통계 결과
    private Integer visitCount;
    private Integer uniqueVisitors;
    private Double percentage;
    
    // 생성자
    public VisitorStatisticsDto() {
        super();
    }
    
    // Getter/Setter
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public Timestamp getVisitDatetime() {
        return visitDatetime;
    }
    
    public void setVisitDatetime(Timestamp visitDatetime) {
        this.visitDatetime = visitDatetime;
    }
    
    public String getVisitDate() {
        return visitDate;
    }
    
    public void setVisitDate(String visitDate) {
        this.visitDate = visitDate;
    }
    
    public Integer getVisitYear() {
        return visitYear;
    }
    
    public void setVisitYear(Integer visitYear) {
        this.visitYear = visitYear;
    }
    
    public Integer getVisitMonth() {
        return visitMonth;
    }
    
    public void setVisitMonth(Integer visitMonth) {
        this.visitMonth = visitMonth;
    }
    
    public Integer getVisitDay() {
        return visitDay;
    }
    
    public void setVisitDay(Integer visitDay) {
        this.visitDay = visitDay;
    }
    
    public Integer getVisitHour() {
        return visitHour;
    }
    
    public void setVisitHour(Integer visitHour) {
        this.visitHour = visitHour;
    }
    
    public Integer getVisitWeekday() {
        return visitWeekday;
    }
    
    public void setVisitWeekday(Integer visitWeekday) {
        this.visitWeekday = visitWeekday;
    }
    
    public String getWeekday() {
        return weekday;
    }
    
    public void setWeekday(String weekday) {
        this.weekday = weekday;
    }
    
    public String getIpAddress() {
        return ipAddress;
    }
    
    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }
    
    public String getUserAgent() {
        return userAgent;
    }
    
    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }
    
    public String getBrowser() {
        return browser;
    }
    
    public void setBrowser(String browser) {
        this.browser = browser;
    }
    
    public String getOs() {
        return os;
    }
    
    public void setOs(String os) {
        this.os = os;
    }
    
    public String getReferer() {
        return referer;
    }
    
    public void setReferer(String referer) {
        this.referer = referer;
    }
    
    public String getPageUrl() {
        return pageUrl;
    }
    
    public void setPageUrl(String pageUrl) {
        this.pageUrl = pageUrl;
    }
    
    public String getDomainType() {
        return domainType;
    }
    
    public void setDomainType(String domainType) {
        this.domainType = domainType;
    }
    
    public Timestamp getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
    
    public String getStartDate() {
        return startDate;
    }
    
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }
    
    public String getEndDate() {
        return endDate;
    }
    
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    
    public Integer getVisitCount() {
        return visitCount;
    }
    
    public void setVisitCount(Integer visitCount) {
        this.visitCount = visitCount;
    }
    
    public Integer getUniqueVisitors() {
        return uniqueVisitors;
    }
    
    public void setUniqueVisitors(Integer uniqueVisitors) {
        this.uniqueVisitors = uniqueVisitors;
    }
    
    public Double getPercentage() {
        return percentage;
    }
    
    public void setPercentage(Double percentage) {
        this.percentage = percentage;
    }
    
    @Override
    public String toString() {
        return "VisitorStatisticsDto{" +
                "id=" + id +
                ", visitDatetime=" + visitDatetime +
                ", visitDate='" + visitDate + '\'' +
                ", ipAddress='" + ipAddress + '\'' +
                ", browser='" + browser + '\'' +
                ", os='" + os + '\'' +
                ", pageUrl='" + pageUrl + '\'' +
                ", domainType='" + domainType + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", visitCount=" + visitCount +
                ", uniqueVisitors=" + uniqueVisitors +
                ", percentage=" + percentage +
                '}';
    }
}
