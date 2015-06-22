package org.top.db;

/**
 * Close Database Connection
 */
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CloseSQL{
	
	public static void CloseDB(ResultSet rs, Statement stmt, Connection con){
		try {
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
    public static void CloseDB(Statement stmt, Connection con){
    	try {
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
    
    public static  void CloseDB(Connection con){
    	try {
    		con.close();
    	} catch (SQLException e) {
    		e.printStackTrace();
    	}
    }
}