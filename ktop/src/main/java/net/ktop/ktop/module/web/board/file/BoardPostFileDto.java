package net.ktop.ktop.module.web.board.file;

import net.ktop.ktop.module.util.file.FileDto;

public class BoardPostFileDto {

	/* 게시글 파일 고유 id */
	private int id;

	/* 게시글 고유 id */
	private int postId;

	/* 파일 고유 id */
	private int fileId;
	
	private FileDto file;
	
	public BoardPostFileDto() {
	}

	public BoardPostFileDto(int postId, int fileId) {
		this.postId = postId;
		this.fileId = fileId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getFileId() {
		return fileId;
	}

	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	
	public FileDto getFile() {
		return file;
	}

	public void setFile(FileDto file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "BoardPostFileDto [id=" + id + ", postId=" + postId + ", fileId=" + fileId + ", file=" + file + "]";
	}

}