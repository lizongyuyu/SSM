package com.jikexueyuan.test;

import java.sql.Connection;

import com.jikexueyuan.dao.UserDao;
import com.jikexueyuan.dao.impl.UserDaoImpl;
import com.jikexueyuan.entity.User;
import com.jikexueyuan.util.ConnectionFactory;

public class UserDaoTest {
	public static void main(String[] args) {
		Connection conn = null;
		try {
			conn = ConnectionFactory.getInstance().makeConnection();
			conn.setAutoCommit(false);

			UserDao userDao = new UserDaoImpl();
			User tom = new User();
			tom.setName("TOM");
			tom.setPassword("tom456789");
			tom.setEmail("tom.@qq.com");
			tom.setId(11L);
			//userDao.save(conn, tom);
			//userDao.update(conn, 11L, tom);
			userDao.delete(conn, tom);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception e2) {

			}
		}
	}
}
