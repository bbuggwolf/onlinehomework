package jp.itstudy.onlinehomework.db;

public class HoneworkDb {
	private int homeworkId;
	private String homeworkTitle;
	private String className;
	private String uploadDate;
	private String expirationDate;
	private int classId;

	@Override
	public String toString() {
		return "HoneworkDb [homeworkId=" + homeworkId + ", homeworkTitle=" + homeworkTitle + ", className=" + className
				+ ", uploadDate=" + uploadDate + ", expirationDate=" + expirationDate + ", classId=" + classId + "]";
	}

	public int getHomeworkId() {
		return homeworkId;
	}

	public void setHomeworkId(int homeworkId) {
		this.homeworkId = homeworkId;
	}

	public String getHomeworkTitle() {
		return homeworkTitle;
	}

	public void setHomeworkTitle(String homeworkTitle) {
		this.homeworkTitle = homeworkTitle;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getExpirationDate() {
		return expirationDate;
	}

	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public HoneworkDb(int homeworkId, String homeworkTitle, String className, String uploadDate, String expirationDate,
			int classId) {
		super();
		this.homeworkId = homeworkId;
		this.homeworkTitle = homeworkTitle;
		this.className = className;
		this.uploadDate = uploadDate;
		this.expirationDate = expirationDate;
		this.classId = classId;
	}

	public HoneworkDb() {
		super();
	}

}
