package net.ktop.ktop.module.web.workforce.workfield;

import java.util.List;

public class WorkFieldDto {
	
	/* work_field 테이블 관리 */
	private int id;
	private String name;
	private boolean isActive;
	private String createdAt;
	private String updatedAt;
	
	/* worker_field 테이블 관리 */
    private String userId;
    private int fieldId;
    private String fieldName;
    private List<Integer> workFieldList;
    
    // work_field 테이블용 생성자
    public WorkFieldDto() {}
    
    public WorkFieldDto(int id, String name, boolean isActive) {
    	this.id = id;
    	this.name = name;
    	this.isActive = isActive;
    }
    
    // work_field 테이블용 getter/setter
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
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
	
	// worker_field 테이블용 getter/setter
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public int getFieldId() {
		return fieldId;
	}
	
	public void setFieldId(int fieldId) {
		this.fieldId = fieldId;
	}
	
	public String getFieldName() {
		return fieldName;
	}
	
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	
	public List<Integer> getWorkFieldList() {
		return workFieldList;
	}
	
	public void setWorkFieldList(List<Integer> workFieldList) {
		this.workFieldList = workFieldList;
	}

	@Override
	public String toString() {
		return "WorkFieldDto [id=" + id + ", name=" + name + ", isActive=" + isActive + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + ", userId=" + userId + ", fieldId=" + fieldId + ", fieldName="
				+ fieldName + ", workFieldList=" + workFieldList + "]";
	}
} 