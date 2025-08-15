package net.ktop.ktop.module.web.admin.site.history;

import java.time.LocalDateTime;
import net.ktop.ktop.module.util.SearchDto;

public class SiteHistoryDto extends SearchDto {
    private Long id;
    private LocalDateTime createdAt;
    private String userId;
    private String type;
    private String ip;
    private String parameters;
    
    // 검색 조건을 위한 필드
    private String searchUserId;
    private String searchType;
    private String searchIp;
    private String startDate;
    private String endDate;
    
    public SiteHistoryDto() {}
    
    public SiteHistoryDto(String userId, String type, String ip, String parameters) {
        this.userId = userId;
        this.type = type;
        this.ip = ip;
        this.parameters = parameters;
    }
    
    // Getter and Setter
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
    
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
    
    public String getUserId() {
        return userId;
    }
    
    public void setUserId(String userId) {
        this.userId = userId;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public String getIp() {
        return ip;
    }
    
    public void setIp(String ip) {
        this.ip = ip;
    }
    
    public String getParameters() {
        return parameters;
    }
    
    public void setParameters(String parameters) {
        this.parameters = parameters;
    }
    
    public String getSearchUserId() {
        return searchUserId;
    }
    
    public void setSearchUserId(String searchUserId) {
        this.searchUserId = searchUserId;
    }
    
    public String getSearchType() {
        return searchType;
    }
    
    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }
    
    public String getSearchIp() {
        return searchIp;
    }
    
    public void setSearchIp(String searchIp) {
        this.searchIp = searchIp;
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
    
    // 페이징 관련 편의 메서드들 (SearchDto에서 상속받은 pagination 사용)
    public void setPage(int page) {
        this.getPagination().setPage(page);
    }
    
    public void setSize(int size) {
        this.getPagination().setSize(size);
    }
    
    public int getPage() {
        return this.getPagination().getPage();
    }
    
    public int getSize() {
        return this.getPagination().getSize();
    }
    
    public int getOffset() {
        return this.getPagination().getOffset();
    }
}
