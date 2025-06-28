package net.ktop.ktop.module.web.admin.ad;

import net.ktop.ktop.module.util.SearchDto;
import net.ktop.ktop.module.util.file.FileDto;

public class AdBannerDto extends SearchDto {
    private Long id;
    private String position;
    private String title;
    private String linkUrl;
    private String startAt;
    private String endAt;
    private boolean isActive;
    private String mediaType;
    private int fileId;
    private String createdAt;
    private String updatedAt;
    
    // 파일 관련
    private FileDto file;
    
    // 기본 생성자
    public AdBannerDto() {}
    
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getPosition() {
        return position;
    }
    
    public void setPosition(String position) {
        this.position = position;
    }
    
    public String getTitle() {
        return title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getLinkUrl() {
        return linkUrl;
    }
    
    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }
    
    public String getStartAt() {
        return startAt;
    }
    
    public void setStartAt(String startAt) {
        this.startAt = startAt;
    }
    
    public String getEndAt() {
        return endAt;
    }
    
    public void setEndAt(String endAt) {
        this.endAt = endAt;
    }
    
    public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public String getMediaType() {
        return mediaType;
    }
    
    public void setMediaType(String mediaType) {
        this.mediaType = mediaType;
    }
    
    public int getFileId() {
        return fileId;
    }
    
    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }
    
    public FileDto getFile() {
        return file;
    }
    
    public void setFile(FileDto file) {
        this.file = file;
    }
    
    @Override
    public String toString() {
        return "AdBannerDto{" +
                "id=" + id +
                ", position='" + position + '\'' +
                ", title='" + title + '\'' +
                ", linkUrl='" + linkUrl + '\'' +
                ", startAt='" + startAt + '\'' +
                ", endAt='" + endAt + '\'' +
                ", isActive=" + isActive +
                ", mediaType='" + mediaType + '\'' +
                ", fileId=" + fileId +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }
} 