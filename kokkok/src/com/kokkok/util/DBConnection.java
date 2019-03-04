package com.kokkok.util;

import java.sql.*;

public class DBConnection {
	
	
	private DBConnection(){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e){
			e.printStackTrace();
		}		
	}

	
	private static class Holder {
		public static final DBConnection INSTANCE = new DBConnection();
	}
	
	public static DBConnection getInstance() {
		return Holder.INSTANCE;
	}
	
	
	public static Connection makeConnection() throws SQLException {	
	return DriverManager.getConnection("jdbc:oracle:thin:@oracle-instance1.c39btlcttohl.ap-northeast-2.rds.amazonaws.com:1521:orcl","kitri","kitri");
	
	}
}
