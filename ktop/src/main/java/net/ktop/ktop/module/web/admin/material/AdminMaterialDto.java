package net.ktop.ktop.module.web.admin.material;

import java.util.ArrayList;
import java.util.List;

import net.ktop.ktop.module.web.admin.region.AdminRegionDto;

public class AdminMaterialDto {

	/* 카테고리 고유 id */
	private int id;

	/* 카테고리 이름 */
	private String name;

	/* 부모 카테고리 id */
	private Integer parentId;

	/* 카테고리 사용 여부 */
	private boolean isActive;

	private int depth;

	private int displayOrder;

	/* 카테고리 생성일 */
	private String createdAt;

	/* 카테고리 수정일 */
	private String updatedAt;
	
	private List<AdminMaterialDto> children = new ArrayList<>();

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

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
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

	public List<AdminMaterialDto> getChildren() {
		return children;
	}

	public void setChildren(List<AdminMaterialDto> children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "AdminMaterialDto [id=" + id + ", name=" + name + ", parentId=" + parentId + ", isActive=" + isActive
				+ ", depth=" + depth + ", displayOrder=" + displayOrder + ", createdAt=" + createdAt + ", updatedAt="
				+ updatedAt + ", children=" + children + "]";
	}
	
	
	
}
