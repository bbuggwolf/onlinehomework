package jp.itstudy.onlinehomework.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jp.itstudy.onlinehomework.db.UserDb;
import jp.itstudy.onlinehomework.util.MysqlUtil;

public class UserModel {

	public UserDb searchUser(UserDb userDb) {
		UserDb result = new UserDb();
		// 第一步连接数据数据库
		Connection connection = MysqlUtil.getConnection();
		// 创建数据库流
		PreparedStatement ps = null;
		// 写sql
		String sql = "SELECT * FROM " + MysqlUtil.PER + "user " + "where userName = '" + userDb.getUserName()
				+ "' and userPassword = '" + userDb.getUserPassword() + "'" + " and userStatus = 1";
		System.out.println(sql);
		try {
			ps = connection.prepareStatement(sql);
			// 执行sql语句
			ResultSet resultSet = ps.executeQuery();
			while (resultSet.next()) {
				result.setUserId(resultSet.getInt("userId")); // 数据表中的列名
				result.setUserName(resultSet.getString("userName"));
				result.setUserPassword(resultSet.getString("userPassword"));
				result.setUserStatus(resultSet.getByte("userStatus"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return result;

	}
}
