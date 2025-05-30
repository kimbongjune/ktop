package net.ktop.ktop.module.web.company.file;

import net.ktop.ktop.module.util.file.FileDto;

public class CompanyFileDto {

	/** 업체 파일 고유 ID */
	private int id;

	/** 업체 ID (company 테이블의 PK) */
	private String companyId;

	/** 파일 고유 ID (file 테이블의 PK) */
	private int fileId;

	/** 파일 유형 (1: 사업자등록증, 2: 소개 이미지) */
	private int fileType;
	
	private FileDto file;
	
	public CompanyFileDto() {}
	
	public CompanyFileDto(String companyId, int fileId, int fileType) {
		this.companyId = companyId;
		this.fileId = fileId;
		this.fileType = fileType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
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
		return "CompanyFileDto [id=" + id + ", companyId=" + companyId + ", fileId=" + fileId + ", fileType=" + fileType
				+ ", file=" + file + "]";
	}
}
