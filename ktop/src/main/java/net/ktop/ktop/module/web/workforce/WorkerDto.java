package net.ktop.ktop.module.web.workforce;

import java.util.List;

public class WorkerDto {
    private String userId;
    private int regionId;
    private String introduction;
    private String status;
    private String createdAt;
    private String updatedAt;
    private String deletedAt;
    private List<WorkerFieldDto> fieldList;
    private int fieldId;
    
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRegionId() {
		return regionId;
	}
	public void setRegionId(int regionId) {
		this.regionId = regionId;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
	public String getDeletedAt() {
		return deletedAt;
	}
	public void setDeletedAt(String deletedAt) {
		this.deletedAt = deletedAt;
	}
	public List<WorkerFieldDto> getFieldList() {
		return fieldList;
	}
	public void setFieldList(List<WorkerFieldDto> fieldList) {
		this.fieldList = fieldList;
	}
    public int getFieldId() {
        return fieldId;
    }
    public void setFieldId(int fieldId) {
        this.fieldId = fieldId;
    }
	@Override
	public String toString() {
		return "WorkerDto [userId=" + userId + ", regionId=" + regionId + ", introduction=" + introduction + ", status="
				+ status + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + ", deletedAt=" + deletedAt
				+ ", fieldList=" + fieldList + "]";
	}
}