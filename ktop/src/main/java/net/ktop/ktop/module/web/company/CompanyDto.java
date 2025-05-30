package net.ktop.ktop.module.web.company;

import java.util.List;

import net.ktop.ktop.module.web.company.file.CompanyFileDto;
import net.ktop.ktop.module.web.region.RegionDto;

public class CompanyDto {
    /** 업체 아이디 */
    private String id;

    /** 업체명 */
    private String companyName;

    /** 대표자명 */
    private String ceoName;

    /** 업체 전화번호 */
    private String phone;

    /** 업체 이메일 */
    private String email;

    /** 업체 우편주소 */
    private String zipcode;

    /** 업체 주소 */
    private String address1;

    /** 업체 상세주소 */
    private String address2;

    /** 업체 홈페이지 주소 */
    private String homepage;

    /** 업체 지역 코드 (region_category 테이블과 외래키) */
    private Long regionId;

    /** 업체 소개 문구 (HTML) */
    private String descriptionHtml;

    /** 생성일 */
    private String createdAt;

    /** 수정일 */
    private String updatedAt;

    /** 탈퇴일 */
    private String deletedAt;
    
    private List<CompanyFileDto> companyFileList;
    
    private String regionName;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public Long getRegionId() {
		return regionId;
	}

	public void setRegionId(Long regionId) {
		this.regionId = regionId;
	}

	public String getDescriptionHtml() {
		return descriptionHtml;
	}

	public void setDescriptionHtml(String descriptionHtml) {
		this.descriptionHtml = descriptionHtml;
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
	
	public List<CompanyFileDto> getCompanyFileList() {
		return companyFileList;
	}

	public void setCompanyFileList(List<CompanyFileDto> companyFileList) {
		this.companyFileList = companyFileList;
	}
	
	public String getRegionName() {
		return regionName;
	}

	public void setRegionName(String regionName) {
		this.regionName = regionName;
	}

	@Override
	public String toString() {
		return "CompanyDto [id=" + id + ", companyName=" + companyName + ", ceoName=" + ceoName + ", phone=" + phone
				+ ", email=" + email + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2
				+ ", homepage=" + homepage + ", regionId=" + regionId + ", descriptionHtml=" + descriptionHtml
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + ", deletedAt=" + deletedAt
				+ ", companyFileList=" + companyFileList + ", regionName=" + regionName + "]";
	}
	
}
