package net.ktop.ktop.module.web.board;

import java.util.List;

import net.ktop.ktop.module.web.board.file.BoardPostFileDto;

public class BoardPostDto {

	/* 게시글 고유 id */
	private int id;

	/* 게시글 종류 (예: 1 - 공지사항, 2 - Q&A 등) */
	private int boardType;

	/* 작성자 아이디 */
	private String userId;

	/* 게시글 제목 */
	private String title;

	/* 작성자 이름 */
	private String name;

	/* 게시글 본문 내용 */
	private String content;

	/* 게시글 생성일 */
	private String createdAt;

	/* 게시글 수정일 */
	private String updatedAt;

	/* 게시글 삭제일 */
	private String deletedAt;

	/* 공지 만료일 */
	private String expireDate;

	/* 조회수 */
	private int viewCount;

	/* 이전글 번호 */
	private Integer prevPostId;

	/* 이전글 제목 */
	private String prevPostTitle;

	/* 다음글 번호 */
	private Integer nextPostId;

	/* 다음글 제목 */
	private String nextPostTitle;

	private List<BoardPostFileDto> boardFileList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBoardType() {
		return boardType;
	}

	public void setBoardType(int boardType) {
		this.boardType = boardType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public Integer getPrevPostId() {
		return prevPostId;
	}

	public void setPrevPostId(Integer prevPostId) {
		this.prevPostId = prevPostId;
	}

	public String getPrevPostTitle() {
		return prevPostTitle;
	}

	public void setPrevPostTitle(String prevPostTitle) {
		this.prevPostTitle = prevPostTitle;
	}

	public Integer getNextPostId() {
		return nextPostId;
	}

	public void setNextPostId(Integer nextPostId) {
		this.nextPostId = nextPostId;
	}

	public String getNextPostTitle() {
		return nextPostTitle;
	}

	public void setNextPostTitle(String nextPostTitle) {
		this.nextPostTitle = nextPostTitle;
	}

	public List<BoardPostFileDto> getBoardFileList() {
		return boardFileList;
	}

	public void setBoardFileList(List<BoardPostFileDto> boardFileList) {
		this.boardFileList = boardFileList;
	}

	@Override
	public String toString() {
		return "BoardPostDto [id=" + id + ", boardType=" + boardType + ", userId=" + userId + ", title=" + title
				+ ", name=" + name + ", content=" + content + ", createdAt=" + createdAt + ", updatedAt=" + updatedAt
				+ ", deletedAt=" + deletedAt + ", expireDate=" + expireDate + ", viewCount=" + viewCount
				+ ", prevPostId=" + prevPostId + ", prevPostTitle=" + prevPostTitle + ", nextPostId=" + nextPostId
				+ ", nextPostTitle=" + nextPostTitle + ", boardFileList=" + boardFileList + "]";
	}

}