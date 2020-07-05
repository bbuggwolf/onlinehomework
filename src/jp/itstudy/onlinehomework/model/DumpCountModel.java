package jp.itstudy.onlinehomework.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import jp.itstudy.onlinehomework.db.DumpCountDb;
import jp.itstudy.onlinehomework.util.MysqlUtil;

public class DumpCountModel {
	/**
	 * 根据班级状态返回班级信息 byte类型 的状态 返回班级信息 lin 2020-07 234242@qq.com
	 * 
	 * @return
	 */
	public ArrayList<DumpCountDb> getClassByTypeId() {
		ArrayList<DumpCountDb> result = new ArrayList<>();
		// 链接数据库
		Connection connection = MysqlUtil.getConnection();
		java.sql.PreparedStatement ps = null;
		String sql = "select t.homeworkTypeName,count(*) as num,t.id from " + MysqlUtil.PER + "dump d" + " "
				+ " left join" + " " + MysqlUtil.PER
				+ "homework_type t on d.dumpTypeId=t.id group by t.id order by num desc limit 0,8;";

		System.out.println(sql);
		try {
			ps = connection.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				// rs名字对应数据库中表的列名
				DumpCountDb DumpCountDbTemp = new DumpCountDb(rs.getInt("id"), rs.getInt("num"),
						rs.getString("homeworkTypeName"));
				result.add(DumpCountDbTemp);
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		return result;
	}
}
