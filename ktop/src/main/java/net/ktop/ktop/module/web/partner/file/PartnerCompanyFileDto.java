package net.ktop.ktop.module.web.partner.file;

import net.ktop.ktop.module.util.file.FileDto;

public class PartnerCompanyFileDto {

	/** 업체 파일 고유 ID */
	private int id;

	/** partnerId ID (partnerId 테이블의 PK) */
	private String partnerId;

	/** 파일 고유 ID (file 테이블의 PK) */
	private int fileId;
	
	private FileDto file;
	
	public PartnerCompanyFileDto() {}
	
	public PartnerCompanyFileDto(String partnerId, int fileId) {
		this.partnerId = partnerId;
		this.fileId = fileId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPartnerId() {
		return partnerId;
	}

	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
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
		return "PartnerCompanyFileDto [id=" + id + ", partnerId=" + partnerId + ", fileId=" + fileId + ", file=" + file
				+ "]";
	}
	
	
}
