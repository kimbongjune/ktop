package net.ktop.ktop.module.web.workforce;

import java.util.List;

import net.ktop.ktop.module.util.SearchDto;
import net.ktop.ktop.module.web.user.UserDto;
import net.ktop.ktop.module.web.workforce.file.WorkerFileDto;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldDto;

public class WorkerDto extends SearchDto{
    private String userId;
    private Integer regionId;
    private String introduction;
    private String status;
    private String createdAt;
    private String updatedAt;
    private String deletedAt;
    private List<WorkerFieldDto> fieldList;
    private List<WorkerFileDto> workerFileList;
    private Integer fieldId;
    private String name;
    private String regionName;
    private UserDto user;
    
	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public Integer getRegionId() {
		return regionId;
	}


	public void setRegionId(Integer regionId) {
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


	public List<WorkerFileDto> getWorkerFileList() {
		return workerFileList;
	}


	public void setWorkerFileList(List<WorkerFileDto> workerFileList) {
		this.workerFileList = workerFileList;
	}


	public Integer getFieldId() {
		return fieldId;
	}


	public void setFieldId(Integer fieldId) {
		this.fieldId = fieldId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRegionName() {
		return regionName;
	}


	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}


	public UserDto getUser() {
		return user;
	}


	public void setUser(UserDto user) {
		this.user = user;
	}


	@Override
	public String toString() {
		return "WorkerDto [userId=" + userId + ", regionId=" + regionId + ", introduction=" + introduction + ", status="
				+ status + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + ", deletedAt=" + deletedAt
				+ ", fieldList=" + fieldList + ", workerFileList=" + workerFileList + ", fieldId=" + fieldId + ", name="
				+ name + ", regionName=" + regionName + ", user=" + user + "]";
	}
	
}