package jp.itstudy.onlinehomework.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jp.itstudy.onlinehomework.db.HoneworkDb;
import jp.itstudy.onlinehomework.util.MysqlUtil;

public class HomeworkModel {
	public ArrayList<HoneworkDb> getHomework(String orderStr, int startIndex, int length) {
		ArrayList<HoneworkDb> result = new ArrayList<>();
		Connection connection = MysqlUtil.getConnection();
		PreparedStatement ps = null;

		String sql = "SELECT t.homeworkId,t.homeworkTitle,c.className," + "t.uploadDate, t.expirationDate,c.classId"
				+ "FROM " + MysqlUtil.PER + "  homework as t LEFT JOIN itstudy_class as c"
				+ "on t.classId = c.classId ORDER BY t.uploadDate desc LIMIT 0,10;";
		System.out.println(sql);

		try {
			ps = connection.prepareStatement(sql);
			// 执行sql语句
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				HoneworkDb homeworkDb = new HoneworkDb(rs.getInt("homeworkId"), rs.getString("homeworkTitle"),
						rs.getString("className"), rs.getString("uploadDate"), rs.getString("expirationDate"),
						rs.getInt("classId"));
				result.add(homeworkDb);

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
