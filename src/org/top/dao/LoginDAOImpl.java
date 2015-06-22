package org.top.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.top.bean.User;
import org.top.db.DBConnection;

public class LoginDAOImpl implements LoginDAO{
	Connection conn = null;
	
	@Override
	public boolean login(User user) {
		boolean flag = false;
		conn = DBConnection.GetConnectionMysql();
		
		String sql = "SELECT * FROM user WHERE UserName=? AND UserPassword=?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUid());
			stmt.setString(2, user.getPwd());
			rs = stmt.executeQuery();
		
			while (rs.next()) {
				flag = true;
			}
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
		
	}

	@Override
	public boolean register(User user) {
		
		if ( getUser(user) )
			return false;
		
		conn = DBConnection.GetConnectionMysql();
		
		String sql = "INSERT INTO user VALUES (?,?)";
		PreparedStatement stmt = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUid());
			stmt.setString(2, user.getPwd());
			stmt.executeUpdate();
		
			stmt.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean getUser(User user) {
		conn = DBConnection.GetConnectionMysql();
		
		String sql = "SELECT * FROM user WHERE UserName=?";
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, user.getUid());
			rs = stmt.executeQuery();
		
			while (rs.next()) {
				return true;
			}
			stmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
