package jp.itstudy.onlinehomework.db;

public class ClassDb {
	private int classId;
	private String classStartDate;
	private String classEndDate;
	private String classStartTime;
	private String classEndTime;
	private byte classStatus; // 1未开班 2已开班 3已毕业 4预定开却取消的班 5中途取消的班 6other
	private String className;
	private String classLocal;
	private byte classWeek; // 1平日白天 2平日晚上 3周末 4 other
	private int classNum;

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getClassStartDate() {
		return classStartDate;
	}

	public void setClassStartDate(String classStartDate) {
		this.classStartDate = classStartDate;
	}

	public String getClassEndDate() {
		return classEndDate;
	}

	public void setClassEndDate(String classEndDate) {
		this.classEndDate = classEndDate;
	}

	public String getClassStartTime() {
		return classStartTime;
	}

	public void setClassStartTime(String classStartTime) {
		this.classStartTime = classStartTime;
	}

	public String getClassEndTime() {
		return classEndTime;
	}

	public void setClassEndTime(String classEndTime) {
		this.classEndTime = classEndTime;
	}

	public byte getClassStatus() {
		return classStatus;
	}

	public void setClassStatus(byte classStatus) {
		this.classStatus = classStatus;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getClassLocal() {
		return classLocal;
	}

	public void setClassLocal(String classLocal) {
		this.classLocal = classLocal;
	}

	public byte getClassWeek() {
		return classWeek;
	}

	public void setClassWeek(byte classWeek) {
		this.classWeek = classWeek;
	}

	public int getClassNum() {
		return classNum;
	}

	public void setClassNum(int classNum) {
		this.classNum = classNum;
	}

	@Override
	public String toString() {
		return "ClassDb [classId=" + classId + ", classStartDate=" + classStartDate + ", classEndDate=" + classEndDate
				+ ", classStartTime=" + classStartTime + ", classEndTime=" + classEndTime + ", classStatus="
				+ classStatus + ", className=" + className + ", classLocal=" + classLocal + ", classWeek=" + classWeek
				+ ", classNum=" + classNum + "]";
	}

	public ClassDb(int classId, String classStartDate, String classEndDate, String classStartTime, String classEndTime,
			byte classStatus, String className, String classLocal, byte classWeek, int classNum) {
		super();
		this.classId = classId;
		this.classStartDate = classStartDate;
		this.classEndDate = classEndDate;
		this.classStartTime = classStartTime;
		this.classEndTime = classEndTime;
		this.classStatus = classStatus;
		this.className = className;
		this.classLocal = classLocal;
		this.classWeek = classWeek;
		this.classNum = classNum;
	}

	public ClassDb() {
		super();
	}

}
