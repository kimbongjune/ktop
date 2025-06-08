package net.ktop.ktop.module.web.material.file;

import net.ktop.ktop.module.util.file.FileDto;

public class MaterialFileDto {

	private int id;

	private int materialId;

	private int fileId;

	private FileDto file;

	public MaterialFileDto() {
	}

	public MaterialFileDto(int materialId, int fileId) {
		this.materialId = materialId;
		this.fileId = fileId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMaterialId() {
		return materialId;
	}

	public void setMaterialId(int materialId) {
		this.materialId = materialId;
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
		return "MaterialFileDto [id=" + id + ", materialId=" + materialId + ", fileId=" + fileId + ", file=" + file + "]";
	}
}
