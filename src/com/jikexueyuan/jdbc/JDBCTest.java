package com.jikexueyuan.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCTest {
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

	/**
	 * 插入方法
	 */
	public static void insert() {
		Connection conn = getConnection();
		try {
			String sql = "insert into tbl_user(name,password,email)" + "values('Tom','123456','4343@163.com')";
			Statement st = conn.createStatement();
			int count = st.executeUpdate(sql);
			System.out.println("向用户表中插入" + count + "条记录");
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新方法
	 */
	public static void update() {
		Connection conn = getConnection();
		try {
			String sql = "update tbl_user set email='44646@qq.com' where name='Tom'";
			Statement st = conn.createStatement();
			int count = st.executeUpdate(sql);
			System.out.println("向用户表中更新" + count + "条记录");
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/**
 * 删除操作
 * @param args
 */
	public static void delete() {
		Connection conn = getConnection();
		try {
			String sql = "delete from tbl_user where name='Tom'";
			Statement st = conn.createStatement();
			int count = st.executeUpdate(sql);
			System.out.println("用户表中删除" + count + "条记录");
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		/*insert();*/
		/*update();*/
		delete();

		/*
		 * String sql = "select * from tbl_user"; Connection conn=null; Statement
		 * st=null; ResultSet rs=null; try { Class.forName("com.mysql.jdbc.Driver");
		 * conn = DriverManager.getConnection(
		 * "jdbc:mysql://localhost:3306/jsp_db?serverTimezone=GMT",
		 * "root","life@we1348310"); st=conn.createStatement();
		 * rs=st.executeQuery(sql);//发送sql语句
		 * 
		 * while(rs.next()) { System.out.println(rs.getInt("id")+" ");
		 * System.out.println(rs.getString("name")+" ");
		 * System.out.println(rs.getString("password")+" ");
		 * System.out.println(rs.getString("email")+" ");
		 * 
		 * } } catch (Exception e) { e.printStackTrace(); }finally{ try { rs.close(); }
		 * catch (Exception e2) { } try { st.close(); } catch (Exception e3) { } try {
		 * conn.close(); } catch (Exception e4) { } }
		 */
	}
}
