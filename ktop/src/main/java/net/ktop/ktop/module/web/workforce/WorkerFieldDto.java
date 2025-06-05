package net.ktop.ktop.module.web.workforce;

public class WorkerFieldDto {
    private String userId;
    private int fieldId;
    
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
	
	@Override
	public String toString() {
		return "WorkerFieldDto [userId=" + userId + ", fieldId=" + fieldId + "]";
	}
}