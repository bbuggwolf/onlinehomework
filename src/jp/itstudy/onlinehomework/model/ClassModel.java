package jp.itstudy.onlinehomework.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jp.itstudy.onlinehomework.db.ClassDb;
import jp.itstudy.onlinehomework.util.MysqlUtil;

public class ClassModel {
	public ArrayList<ClassDb> getClassByStatus(byte status) {
		ArrayList<ClassDb> result = new ArrayList<>();
		Connection connection = MysqlUtil.getConnection();
		PreparedStatement ps = null;

		String sql = "SELECT * FROM " + MysqlUtil.PER + "class " + " where classStatus = " + status
				+ " order by classId desc";
		System.out.println(sql);

		try {
			ps = connection.prepareStatement(sql);
			// 执行sql语句
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ClassDb classDbTemp = new ClassDb(rs.getInt("classId"), rs.getString("classStartDate"),
						rs.getString("classEndDate"), rs.getString("classStartTime"), rs.getString("classEndTime"),
						rs.getByte("classStatus"), rs.getString("className"), rs.getString("classLocal"),
						rs.getByte("classWeek"), rs.getInt("classNum"));
				result.add(classDbTemp);

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
