package net.ktop.ktop.module.web.admin.workforce.workfield;

public class AdminWorkFieldDto {

	/* 카테고리 고유 id */
	private int id;

	/* 카테고리 이름 */
	private String name;

	/* 카테고리 사용 여부 */
	private boolean isActive;

	/* 카테고리 생성일 */
	private String createdAt;

	/* 카테고리 수정일 */
	private String updatedAt;

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

	@Override
	public String toString() {
		return "AdminWorkFieldDto [id=" + id + ", name=" + name + ", isActive=" + isActive + ", createdAt=" + createdAt
				+ ", updatedAt=" + updatedAt + "]";
	}
}
