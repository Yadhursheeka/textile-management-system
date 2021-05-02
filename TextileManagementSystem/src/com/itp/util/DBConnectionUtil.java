package com.itp.util;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import java.util.*;
import java.sql.*; 

public class DBConnectionUtil {
	
	private static String url = "jdbc:mysql://localhost:3306/textilemanagementsystem";
	private static String username = "root";
	private static String password = "";
	private static String dbDriver = "com.mysql.jdbc.Driver";
	
	
	
	public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			Class.forName(dbDriver);
			System.out.println("Successfully connected to MYSQL Driver!");
		   
		}catch(ClassNotFoundException ex) {
			System.out.println("Error occurred, Failed to connect with MySQL Driver!");
			ex.printStackTrace();
			}
		
		try {
			con = DriverManager.getConnection(url, username, password);
			System.out.println("Sucessfully connected to Database!");
		} catch(SQLException ex) {
			System.out.println("Connection Error, Failed to connect to Database!");
			ex.printStackTrace();
		}
	
		return con;
	}
	
}
