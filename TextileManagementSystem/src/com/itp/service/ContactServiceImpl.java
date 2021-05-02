package com.itp.service;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import java.sql.*;
import com.itp.model.*;
import com.itp.util.*;

/*
 * This class implements iContactService interface
 * by overriding all of its abstract methods
 */

public class ContactServiceImpl implements iContactService {

	/*
	 * This method adds a contact object to the DB
	 * @override
	 * @param Contact object
	 * @return status
	 */
	public int addContact(Contact c1) {
		
		/* Setting up the connection*/
		Connection con = DBConnectionUtil.getConnection();
		
		//initializing status variable to get execution status of sql query
		int status = 0;
			
		//Sql query saved inside query
			try {
				String query1 = "INSERT INTO textilemanagementsystem.contact"
						+ "(name,email,subject,message)"
						+ "VALUES(?,?,?,?)";
				
				
				/*setting up SQL query with the values by getting the values
				from the product class calling the get methods */
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setString(1, c1.getName());
				ps.setString(2, c1.getEmail());
				ps.setString(3, c1.getSubject());
				ps.setString(4, c1.getMessage());
				
				/*Executing the SQL statement and storing the result of
				 * execution in status variable
				 */
				status = ps.executeUpdate();
				
				con.close();
				
			}catch(Exception ex2) {System.out.println(ex2);}
			
			/*
			 * @return status (status==1 is success) (status==0 is failed to add to DB)
			 */
			return status;
		
	}

}
