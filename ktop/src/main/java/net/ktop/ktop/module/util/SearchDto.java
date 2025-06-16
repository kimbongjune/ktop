package net.ktop.ktop.module.util;

import java.util.List;

public class SearchDto {

    private String searchType;
    private String keyword;
    private List<Integer> materialCategoryIdList;
    private List<Integer> region;

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

	@Override
	public String toString() {
		return "SearchDto [searchType=" + searchType + ", keyword=" + keyword + ", materialCategoryIdList="
				+ materialCategoryIdList + ", region=" + region + "]";
	}

}