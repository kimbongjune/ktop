package net.ktop.ktop.module.web.board;

import net.ktop.ktop.module.util.pagination.PaginationDto;

public class BoardPostSearchDto {

    private String searchType;
    private String keyword;
    private int boardType;
    private PaginationDto pagination;
    private boolean isAdmin;

    public BoardPostSearchDto() {
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

	public int getBoardType() {
		return boardType;
	}

	public void setBoardType(int boardType) {
		this.boardType = boardType;
	}

	public PaginationDto getPagination() {
		return pagination;
	}

	public void setPagination(PaginationDto pagination) {
		this.pagination = pagination;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
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
}