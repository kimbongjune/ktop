package net.ktop.ktop.module.web.partner;

import java.util.List;

import net.ktop.ktop.module.web.company.CompanyDto;
import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.partner.file.PartnerCompanyFileDto;

public class PartnerCompanyDto {

    /** 협력사 고유 ID */
    private String id;

    /** 협력사 소개 문구 */
    private String descriptionHtml;

    /** 승인 상태 (pending, approved, rejected) */
    private String status;

    /** 협력사 카테고리 ID */
    private String categoryId;

    /** 신청일 */
    private String createdAt;

    /** 수정일 */
    private String updatedAt;

    /** 탈퇴일 */
    private String deletedAt;
    
    /** 상위카테고리 여부 */
    private boolean topLevel;
    
    /** 회사 */
    private CompanyDto companyDto;
    
    private List<CompanyFileDto> companyFileList;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescriptionHtml() {
		return descriptionHtml;
	}

	public void setDescriptionHtml(String descriptionHtml) {
		this.descriptionHtml = descriptionHtml;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
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

	public CompanyDto getCompanyDto() {
		return companyDto;
	}

	public void setCompanyDto(CompanyDto companyDto) {
		this.companyDto = companyDto;
	}

	public List<CompanyFileDto> getCompanyFileList() {
		return companyFileList;
	}

	public void setCompanyFileList(List<CompanyFileDto> companyFileList) {
		this.companyFileList = companyFileList;
	}
	
	public boolean isTopLevel() {
		return topLevel;
	}

	public void setTopLevel(boolean topLevel) {
		this.topLevel = topLevel;
	}

	@Override
	public String toString() {
		return "PartnerCompanyDto [id=" + id + ", descriptionHtml=" + descriptionHtml + ", status=" + status
				+ ", categoryId=" + categoryId + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
				+ ", deletedAt=" + deletedAt + ", topLevel=" + topLevel + ", companyDto=" + companyDto
				+ ", companyFileList=" + companyFileList + "]";
	}
	
}
