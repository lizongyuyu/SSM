package com.jikexueyuan.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class ConnectionFactory {
	private static String driver;
	private static String dburl;
	private static String user;
	private static String password;
	
	private static ConnectionFactory cf=new ConnectionFactory();
	
	Connection conn=null;
	static {
		Properties pop =new Properties();
		try {
			InputStream in=ConnectionFactory.class.getClassLoader()
					.getResourceAsStream("dbconfig.properties");
			pop.load(in);
			
		} catch (Exception e) {
			System.out.println("==========配置文件读取错误===============");
		}
		driver=pop.getProperty("driver");
		dburl=pop.getProperty("dburl");
		user=pop.getProperty("user");
		password=pop.getProperty("password");
	}
	
	private ConnectionFactory() {
		
	}
	
	public static ConnectionFactory getInstance() {
		return cf;
	}
	
	public Connection makeConnection() {
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(dburl,user,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
