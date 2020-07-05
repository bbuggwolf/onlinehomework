package jp.itstudy.onlinehomework.db;

public class UserDb {

	private int userId;
	private String userName;
	private String userPassword;
	private byte userStatus; // 默认1: 1:使用2：禁用
	private String userCtime;
	private byte userRole; // 默认:1，1:学生2:老师3:管理员

	public UserDb() {
		super();
	}

	public UserDb(int userId, String userName, String userPassword, byte userStatus, String userCtime, byte userRole) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userStatus = userStatus;
		this.userCtime = userCtime;
		this.userRole = userRole;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public byte getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(byte userStatus) {
		this.userStatus = userStatus;
	}

	public String getUserCtime() {
		return userCtime;
	}

	public void setUserCtime(String userCtime) {
		this.userCtime = userCtime;
	}

	public byte getUserRole() {
		return userRole;
	}

	public void setUserRole(byte userRole) {
		this.userRole = userRole;
	}

	@Override
	public String toString() {
		return "UserDb [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userStatus=" + userStatus + ", userCtime=" + userCtime + ", userRole=" + userRole + "]";
	}
}