package net.ktop.ktop.module.util;

import java.util.List;
import net.ktop.ktop.module.util.pagination.PaginationDto;

public class SearchDto {

    private String searchType;
    private String keyword;
    private List<Integer> materialCategoryIdList;
    private List<Integer> region;
    private PaginationDto pagination;

    public SearchDto() {
        this.pagination = new PaginationDto();
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

	public List<Integer> getMaterialCategoryIdList() {
		return materialCategoryIdList;
	}

	public void setMaterialCategoryIdList(List<Integer> materialCategoryIdList) {
		this.materialCategoryIdList = materialCategoryIdList;
	}

	public List<Integer> getRegion() {
		return region;
	}

	public void setRegion(List<Integer> region) {
		this.region = region;
	}

	public PaginationDto getPagination() {
		return pagination;
	}

	public void setPagination(PaginationDto pagination) {
		this.pagination = pagination;
	}

	// 편의 메서드들
	public void setPage(int page) {
		this.pagination.setPage(page);
	}

	public void setSize(int size) {
		this.pagination.setSize(size);
	}

	public int getPage() {
		return this.pagination.getPage();
	}

	public int getSize() {
		return this.pagination.getSize();
	}

	public int getOffset() {
		return this.pagination.getOffset();
	}

	@Override
	public String toString() {
		return "SearchDto [searchType=" + searchType + ", keyword=" + keyword + ", materialCategoryIdList="
				+ materialCategoryIdList + ", region=" + region + ", pagination=" + pagination + "]";
	}

}