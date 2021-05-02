package com.itp.service;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import com.itp.model.*;
import com.itp.util.*;
import java.util.logging.*;
import java.util.*;
import java.sql.*;

/*
 * This class implements iProductService interface
 * by overriding all of its abstract methods
 */

public class ProductServiceImpl implements iProductService {
	
	/** Initialize logger */
	public static final Logger log = Logger.getLogger(ProductServiceImpl.class.getName());
	/*
	 * This method adds a product object to the DB
	 * @override
	 * @param Product object
	 * @return status
	 */
	public int addProduct(Product p1) {
		
		/* Setting up the connection*/
		Connection con = DBConnectionUtil.getConnection();
		
		//initializing status variable to get execution status of sql query
		int status = 0;
		
		//Sql query saved inside query
		try {
			
			String query = "INSERT INTO textilemanagementsystem.product" +
							"(ID, name, category, qty, size, price, reOrderLevel)" +
							"VALUES(?,?,?,?,?,?,?)";
			
			/*setting up SQL query with the values by getting the values
				from the product class calling the get methods */
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, p1.getProductID());
			ps.setString(2, p1.getProductName());
			ps.setString(3, p1.getProductCategory());
			ps.setInt(4, p1.getProductQty());
			ps.setString(5, p1.getProductSize());
			ps.setDouble(6, p1.getProductPrice());
			ps.setInt(7, p1.getProductReOrderLevel());
			
			/*Executing the SQL statement and storing the result of
			 * execution in status variable
			 */
			status = ps.executeUpdate();
			
			
		} catch(Exception ex) {
			log.log(Level.SEVERE, ex.getMessage());
			ex.printStackTrace();
			
			String error = ex.getMessage();
			if ( error.contains("Duplicate entry '"+ p1.getProductID() +
					"' for key 'PRIMARY'")) {
					status = -1000;
			}
		}
		
		/*
		 * @return status (status==1 is success) (status==0 is failed to add to DB)
		 */
		return status;
		
	}
	
	public List<Product>listProduct() {
		List<Product> list = new ArrayList<Product>();
		
		Connection con = DBConnectionUtil.getConnection();
		
		try {
			String query = "SELECT * FROM textilemanagementsystem.product";
			
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Product p1 = new Product();
				p1.setProductID(rs.getString(1));
				p1.setProductName(rs.getString(2));
				p1.setProductCategory(rs.getString(3));
				p1.setProductQty(Integer.parseInt(rs.getString(4)));
				p1.setProductSize(rs.getString(5));
				p1.setProductPrice(Double.parseDouble(rs.getString(6)));
				p1.setProductReOrderLevel(Integer.parseInt(rs.getString(7)));
				
				list.add(p1);
			}
			con.close();
			
		} catch (Exception ex) {
			log.log(Level.SEVERE, ex.getMessage());
			ex.printStackTrace();
		}
		return list;
	}
	
	public Product getProductById(String ID) {
		
		Product p1 = new Product();

		Connection con= DBConnectionUtil.getConnection();
		
		try {
			String query = "SELECT * FROM textilemanagementsystem.product WHERE ID=?";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ID);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				p1.setProductID(rs.getString(1));
				p1.setProductName(rs.getString(2));
				p1.setProductCategory(rs.getString(3));
				p1.setProductQty(rs.getInt(4));
				p1.setProductSize(rs.getString(5));
				p1.setProductPrice(rs.getDouble(6));
				p1.setProductReOrderLevel(rs.getInt(7));
				
			}
			con.close();
			
		}catch (Exception ex) {
			log.log(Level.SEVERE, ex.getMessage());
			}
		
		return p1;
	}
	
	public int editProduct(Product p1, String ID) {
		Connection con= DBConnectionUtil.getConnection();
		int status=0;

		
		try {
			String query1 = "UPDATE textilemanagementsystem.product SET ID=?, name=?, "
					+ "category=?, qty=?, size=?, price=?, reOrderLevel=? WHERE ID=?";
			
			PreparedStatement ps = con.prepareStatement(query1);

			ps.setString(1, p1.getProductID());
			ps.setString(2, p1.getProductName());
			ps.setString(3, p1.getProductCategory());
			ps.setInt(4, p1.getProductQty());
			ps.setString(5, p1.getProductSize());
			ps.setDouble(6, p1.getProductPrice());
			ps.setInt(7, p1.getProductReOrderLevel());
			ps.setString(8, ID);
			
			status = ps.executeUpdate();
			
			con.close();
		}catch(Exception ex) {
			log.log(Level.SEVERE, ex.getMessage());
			ex.printStackTrace();
		}
		
		
		return status;
	}
	
	public int deleteProduct(String ID) {
		
		Connection con =DBConnectionUtil.getConnection();
		
		int status=0;
		
		try {
			String query = "DELETE FROM textilemanagementsystem.product WHERE ID=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, ID);
			
			status=ps.executeUpdate();
			con.close();
		}catch(Exception ex) {
			ex.printStackTrace();
			}
		
		return status;
	}

}
