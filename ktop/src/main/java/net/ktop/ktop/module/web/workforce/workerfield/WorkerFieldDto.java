package net.ktop.ktop.module.web.workforce.workerfield;

import java.util.List;

public class WorkerFieldDto {
    private String userId;
    private int fieldId;
    private String fieldName;
    private List<Integer> workFieldList;
    
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
		return "WorkerFieldDto [userId=" + userId + ", fieldId=" + fieldId + ", fieldName=" + fieldName
				+ ", workFieldList=" + workFieldList + "]";
	}
}