package net.ktop.ktop.module.util.pagination;

public class PaginationDto {
    private int page = 1;           // 현재 페이지 (기본값: 1)
    private int size = 10;          // 페이지당 항목 수 (기본값: 10)
    private int totalCount = 0;     // 전체 항목 수
    private int totalPages = 0;     // 전체 페이지 수
    private int startPage = 1;      // 페이징 UI 시작 페이지
    private int endPage = 1;        // 페이징 UI 끝 페이지
    private int offset = 0;         // 조회 시작 위치
    private boolean hasPrevious;    // 이전 페이지 존재 여부
    private boolean hasNext;        // 다음 페이지 존재 여부
    
    public PaginationDto() {}
    
    public PaginationDto(int page, int size) {
        this.page = Math.max(1, page);
        this.size = Math.max(1, size);
        this.offset = (this.page - 1) * this.size;
    }
    
    // 전체 개수가 설정되면 페이징 계산을 수행
    public void calculatePagination() {
        if (totalCount <= 0) {
            totalPages = 1;
            startPage = 1;
            endPage = 1;
            hasPrevious = false;
            hasNext = false;
            return;
        }
        
        // 전체 페이지 수 계산
        totalPages = (int) Math.ceil((double) totalCount / size);
        
        // 현재 페이지가 전체 페이지를 초과하지 않도록 조정
        if (page > totalPages) {
            page = totalPages;
            offset = (page - 1) * size;
        }
        
        // 페이징 UI 계산 (한 번에 10개 페이지씩 표시)
        int pageBlock = 10;
        int currentBlock = (int) Math.ceil((double) page / pageBlock);
        startPage = (currentBlock - 1) * pageBlock + 1;
        endPage = Math.min(startPage + pageBlock - 1, totalPages);
        
        // 이전/다음 페이지 존재 여부
        hasPrevious = page > 1;
        hasNext = page < totalPages;
    }
    
    // Getters and Setters
    public int getPage() {
        return page;
    }
    
    public void setPage(int page) {
        this.page = Math.max(1, page);
        this.offset = (this.page - 1) * this.size;
    }
    
    public int getSize() {
        return size;
    }
    
    public void setSize(int size) {
        this.size = Math.max(1, size);
        this.offset = (this.page - 1) * this.size;
    }
    
    public int getTotalCount() {
        return totalCount;
    }
    
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        calculatePagination();
    }
    
    public int getTotalPages() {
        return totalPages;
    }
    
    public int getStartPage() {
        return startPage;
    }
    
    public int getEndPage() {
        return endPage;
    }
    
    public int getOffset() {
        return offset;
    }
    
    public boolean isHasPrevious() {
        return hasPrevious;
    }
    
    public boolean isHasNext() {
        return hasNext;
    }
} 