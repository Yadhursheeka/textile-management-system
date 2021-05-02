package com.itp.service;
/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import java.sql.*;
import com.itp.util.*;

/*
 * This class implements iLoginService interface
 * by overriding all of its abstract methods
 */

public class LoginServiceImpl implements iLoginService {

	public boolean adminLogin(String userEmail, String password) {

		boolean status = false;
		String checkPass = null;

		Connection con = DBConnectionUtil.getConnection();

		try {
			String query = "SELECT password FROM textilemanagementsystem.admin WHERE email=?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userEmail);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				checkPass = rs.getString(1);
			}

			if (password.equals(checkPass))
				status = true;

			con.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public boolean supplierLogin(String userEmail, String password) {

		boolean status = false;
		String checkPass = null;

		Connection con = DBConnectionUtil.getConnection();

		/*
		 * try { String query =
		 * "SELECT password FROM textilemanagementsystem.supplier WHERE email=?";
		 * 
		 * PreparedStatement ps = con.prepareStatement(query); ps.setString(1,
		 * userEmail);
		 * 
		 * ResultSet rs = ps.executeQuery();
		 * 
		 * if(rs.next()) { checkPass = rs.getString(1); }
		 * 
		 * if (password.equals(checkPass)) status = true;
		 * 
		 * con.close();
		 * 
		 * }catch (Exception ex) { ex.printStackTrace(); }
		 */

		try {
			String query = "SELECT item FROM textilemanagementsystem.users WHERE email=?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userEmail);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				checkPass = rs.getString(1);
			}

			if (password.equals(checkPass))
				status = true;

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public boolean customerLogin(String userEmail, String password) {

		boolean status = false;
		String checkPass = null;

		Connection con = DBConnectionUtil.getConnection();

		try {
			String query = "SELECT password FROM textilemanagementsystem.customer WHERE email=?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, userEmail);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				checkPass = rs.getString(1);
			}

			if (password.equals(checkPass))
				status = true;

			con.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

	public String adminName(String email) {

		String username = null;

		Connection con = DBConnectionUtil.getConnection();

		try {
			String query = "SELECT fullName FROM textilemanagementsystem.admin WHERE email=?";

			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				username = rs.getString(1);
			}

			con.close();

		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return username;
	}
	
}
