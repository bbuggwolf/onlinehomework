package jp.itstudy.onlinehomework.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlUtil {
	public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	public static final String DB_URL = "jdbc:mysql://localhost:3306/itstudy_systemitstudy";
	public static final String USER = "root";
	public static final String PASS = "88888888";
	public static final String PER = "itstudy_";

	private static Connection connection = null;

	static {
		try {
			Class.forName(JDBC_DRIVER);
			connection = DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("连接成功");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("连接shibai");
			e.printStackTrace();

		}
	}

	private MysqlUtil() {

	}

	public static Connection getConnection() {
		return connection;
	}

	public static boolean closeConnection() {
		boolean result = false;
		if (connection != null) {
			try {
				connection.close();
				result = true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

}
