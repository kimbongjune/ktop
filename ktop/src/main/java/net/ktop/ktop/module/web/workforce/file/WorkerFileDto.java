package net.ktop.ktop.module.web.workforce.file;

import net.ktop.ktop.module.util.file.FileDto;

public class WorkerFileDto {

	/** 업체 파일 고유 ID */
	private int id;

	/** 회원 ID */
	private String userId;

	/** 파일 고유 ID (file 테이블의 PK) */
	private int fileId;

	/** 파일 유형 (1: 사업자등록증, 2: 소개 이미지) */
	private int fileType;
	
	private FileDto file;
	
	public WorkerFileDto() {}
	
	public WorkerFileDto(String userId, int fileId, int fileType) {
		this.userId = userId;
		this.fileId = fileId;
		this.fileType = fileType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getFileId() {
		return fileId;
	}

	public void setFileId(int fileId) {
		this.fileId = fileId;
	}

	public int getFileType() {
		return fileType;
	}

	public void setFileType(int fileType) {
		this.fileType = fileType;
	}
	
	public FileDto getFile() {
		return file;
	}

	public void setFile(FileDto file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "WorkerFileDto [id=" + id + ", userId=" + userId + ", fileId=" + fileId + ", fileType=" + fileType
				+ ", file=" + file + "]";
	}
}
