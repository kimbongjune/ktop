package net.ktop.ktop.module.util.file;

public class FileDto {
	private int id;
    private String filePath;
    private String originalName;
    private String fileName;
    private String mimeType;
    private long fileSize;
    private String createdAt;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getFileName() {
		return fileName;
	}
	
	public String getFileSizeNumber() {
		if (fileSize >= 1024L * 1024 * 1024) {
			return String.format("%.1f", fileSize / (1024.0 * 1024 * 1024));
		} else if (fileSize >= 1024L * 1024) {
			return String.format("%.1f", fileSize / (1024.0 * 1024));
		} else if (fileSize >= 1024L) {
			return String.format("%.1f", fileSize / 1024.0);
		} else {
			return fileSize + "";
		}
	}
	
	public String getFileSizeUnit() {
		if (fileSize >= 1024L * 1024 * 1024) {
			return "GB";
		} else if (fileSize >= 1024L * 1024) {
			return "MB";
		} else if (fileSize >= 1024L) {
			return "KB";
		} else {
			return "B";
		}
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getMimeType() {
		return mimeType;
	}
	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	@Override
	public String toString() {
		return "FileDto [id=" + id + ", filePath=" + filePath + ", originalName=" + originalName + ", fileName="
				+ fileName + ", mimeType=" + mimeType + ", fileSize=" + fileSize + ", createdAt=" + createdAt + "]";
	}
	
    
    
}
