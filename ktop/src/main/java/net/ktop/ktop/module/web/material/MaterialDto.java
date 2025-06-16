package net.ktop.ktop.module.web.material;

import net.ktop.ktop.module.util.SearchDto;
import net.ktop.ktop.module.web.material.file.MaterialFileDto;

public class MaterialDto extends SearchDto {
    private int id;
    private String name;
    private int categoryId;
    private int materialCategoryId;
    private String partnerId;
    private String description;
    private String materialName;
    private String companyName;
    private boolean isActive;
    private String createdAt;
    private String updatedAt;
    private int price;
    private MaterialFileDto materialFile;
    
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
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getMaterialCategoryId() {
		return materialCategoryId;
	}
	public void setMaterialCategoryId(int materialCategoryId) {
		this.materialCategoryId = materialCategoryId;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMaterialName() {
		return materialName;
	}
	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public MaterialFileDto getMaterialFile() {
		return materialFile;
	}
	public void setMaterialFile(MaterialFileDto materialFile) {
		this.materialFile = materialFile;
	}
	@Override
	public String toString() {
		return "MaterialDto [id=" + id + ", name=" + name + ", categoryId=" + categoryId + ", materialCategoryId="
				+ materialCategoryId + ", partnerId=" + partnerId + ", description=" + description + ", materialName="
				+ materialName + ", companyName=" + companyName + ", isActive=" + isActive + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + ", price=" + price + ", materialFile=" + materialFile + ", toString()="
				+ super.toString() + "]";
	}
	
	
}
