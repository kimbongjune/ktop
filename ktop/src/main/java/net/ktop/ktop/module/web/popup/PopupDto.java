package net.ktop.ktop.module.web.popup;

import net.ktop.ktop.module.util.pagination.PaginationDto;

public class PopupDto {
    private int id;
    private String title;
    private String contentHtml;
    private String startAt;
    private String endAt;
    private Integer isVisible;
    private String createdAt;
    private String updatedAt;
    private PaginationDto pagination = new PaginationDto();

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getContentHtml() { return contentHtml; }
    public void setContentHtml(String contentHtml) { this.contentHtml = contentHtml; }
    public String getStartAt() { return startAt; }
    public void setStartAt(String startAt) { this.startAt = startAt; }
    public String getEndAt() { return endAt; }
    public void setEndAt(String endAt) { this.endAt = endAt; }
    public Integer getIsVisible() { return isVisible; }
    public void setIsVisible(Integer isVisible) { this.isVisible = isVisible; }
    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }
    public String getUpdatedAt() { return updatedAt; }
    public void setUpdatedAt(String updatedAt) { this.updatedAt = updatedAt; }
    public PaginationDto getPagination() { return pagination; }
    public void setPagination(PaginationDto pagination) { this.pagination = pagination; }

    // 편의 메서드들
    public void setPage(int page) {
        this.pagination.setPage(page);
    }

    public void setSize(int size) {
        this.pagination.setSize(size);
    }

    public int getPage() {
        return this.pagination.getPage();
    }

    public int getSize() {
        return this.pagination.getSize();
    }

    public int getOffset() {
        return this.pagination.getOffset();
    }

    @Override
    public String toString() {
        return "PopupDto [id=" + id + ", title=" + title + ", contentHtml=" + contentHtml
            + ", startAt=" + startAt + ", endAt=" + endAt + ", isVisible=" + isVisible
            + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
    }
} 