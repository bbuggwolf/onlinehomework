package jp.itstudy.onlinehomework.db;

public class DumpCountDb {
	private int typeId;
	private int num;
	private String homeworkTypeName;
	
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getHomeworkTypeName() {
		return homeworkTypeName;
	}
	public void setHomeworkTypeName(String homeworkTypeName) {
		this.homeworkTypeName = homeworkTypeName;
	}
	public DumpCountDb(int typeId, int num, String homeworkTypeName) {
		super();
		this.typeId = typeId;
		this.num = num;
		this.homeworkTypeName = homeworkTypeName;
	}
	public DumpCountDb() {
		super();
	}
	@Override
	public String toString() {
		return "DumpCountDb [typeId=" + typeId + ", num=" + num + ", homeworkTypeName=" + homeworkTypeName + "]";
	}
	
	
}
