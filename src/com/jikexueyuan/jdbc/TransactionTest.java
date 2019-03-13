package com.jikexueyuan.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class TransactionTest {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db?serverTimezone=GMT", "root",
					"life@we1348310");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void insertUserData(Connection conn) throws SQLException {
		String sql = "insert into tbl_user(id,name,password,email)" + "values(10,'Shiry','23','46464688@qq.com')";
		Statement st = conn.createStatement();
		int count = st.executeUpdate(sql);
		System.out.println("向用户表中添加了" + count + "条记录");
	}

	public static void insertAddressData(Connection conn) throws SQLException {
		String sql = "insert into tbl_address(id,city,country,user_id)" + "values(1,'shanghai','china',10)";
		Statement st = conn.createStatement();
		int count = st.executeUpdate(sql);
		System.out.println("向地址表中添加了" + count + "条记录");
	}

	public static void main(String[] args) {
		Connection conn = null;
		try {
			conn = getConnection();
			// 设置connection.setautocommit(false);
			// 只有程序调用connection.commit()的时候才会将先前执行的语句一起提交到数据库，
			// 这样就实现了数据库的事务。
			conn.setAutoCommit(false);
			insertUserData(conn);
			insertAddressData(conn);
			conn.commit();
		} catch (SQLException e) {
			System.out.println("==========获取到sql异常============");
			e.printStackTrace();
			try {
				conn.rollback();
				System.out.println("===========事物回滚成功=============");
			} catch (SQLException e2) {
				System.out.println("SQLException in rollback" + e2.getMessage());
			}
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e3) {
				e3.printStackTrace();
			}
		}
	}

}
