package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {
	private DBConn() {}
	private static Connection connection = null;
	
	public static Connection getConnection() {
		if (connection == null) {
			String url = "jdbc:oracle:thin:@121.124.37.182:1521:xe";
			String user = "megabox", password = "1234";
//			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // Type 4
//			String user = "scott";
//			String password = "tiger"; 
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
	
	public static Connection getConnection(String url, String user, String password) {
		if (connection == null) {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				connection = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
	
	public static void close() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		connection = null;
	}
}
