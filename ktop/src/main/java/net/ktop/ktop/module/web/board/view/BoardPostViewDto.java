package net.ktop.ktop.module.web.board.view;

public class BoardPostViewDto {
    
    private int postId;
    private String userId;
    private String viewedAt;

    // 기본 생성자
    public BoardPostViewDto() {}

    // 전체 필드 생성자
    public BoardPostViewDto(int postId, String userId) {
        this.postId = postId;
        this.userId = userId;
    }

    // Getter / Setter
    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getViewedAt() {
        return viewedAt;
    }

    public void setViewedAt(String viewedAt) {
        this.viewedAt = viewedAt;
    }

    @Override
    public String toString() {
        return "BoardPostViewDto [postId=" + postId + ", userId=" + userId + ", viewedAt=" + viewedAt + "]";
    }
}