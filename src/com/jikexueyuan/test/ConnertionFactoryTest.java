package com.jikexueyuan.test;

import java.sql.Connection;

import com.jikexueyuan.util.ConnectionFactory;

public class ConnertionFactoryTest {
	public static void main(String[] args) throws Exception {
		ConnectionFactory cf =ConnectionFactory.getInstance();
		Connection conn = cf.makeConnection();
		System.out.println(conn.getAutoCommit());

	}
}
