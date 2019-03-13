package com.jikexueyuan.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jikexueyuan.dao.UserDao;
import com.jikexueyuan.entity.User;

public class UserDaoImpl implements UserDao {
	/**
	 * 保存用户信息
	 * 
	 * @param conn
	 * @param user
	 * @throws Exception
	 */

	@Override
	public void save(Connection conn, User user) throws Exception {
		PreparedStatement ps = conn.prepareCall("insert into tbl_user(name,password,email) values(?,?,?)");
		ps.setString(1, user.getName());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getEmail());
		ps.execute();

	}

	/**
	 * 更新用户信息
	 * 
	 * @param conn
	 * @param id
	 * @param user
	 * @throws Exception
	 */

	@Override
	public void update(Connection conn, Long id, User user) throws Exception {
		String updateSql = "update tbl_user set name=?,password=?,email = ? where id=?";
		PreparedStatement ps = conn.prepareStatement(updateSql);
		ps.setString(1, user.getName());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getEmail());
		ps.setLong(4, id);
		ps.execute();

	}

	/**
	 * 删除用户信息
	 * 
	 * @param conn
	 * @param user
	 * @throws SQLException
	 */

	@Override
	public void delete(Connection conn, User user) throws SQLException {
		PreparedStatement ps = conn.prepareStatement("DELETE FROM tbl_user WHERE id = ?");
		ps.setLong(1, user.getId());
		ps.execute();
		
	}

}
