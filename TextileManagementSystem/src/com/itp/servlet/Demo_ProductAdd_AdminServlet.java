/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

package com.itp.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.model.*;
import com.itp.service.*;

/**
 * Servlet implementation class Demo_ProductAdd_AdminServlet
 */
@WebServlet("/Demo_ProductAdd_AdminServlet")
public class Demo_ProductAdd_AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Demo_ProductAdd_AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

		/*
		 * Creating an object from Product
		 * class and saving the details
		 */
		
		Product p1 = new Product();
		p1.setProductID("Z001");
		p1.setProductName("Shalwar");
		p1.setProductCategory("Girls' Wear");
		p1.setProductQty(100);
		p1.setProductSize("S");
		p1.setProductPrice(1200.50);
		p1.setProductReOrderLevel(10);
		
		int status = 0;
		
		iProductService ip = new ProductServiceImpl();
		status = ip.addProduct(p1);
		
		if (status == -1000) {
			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Cannot add product, Product ID already exists."
								+ "Please use another product ID');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");

		}
		if (status > 0) {
			System.out.println("Product "+p1.getProductName()+
					" Successfully added!");
			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Product Succesfully Added!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductAdd_Admin.jsp'>");

		}
		if (status == 0) {

			System.out.println("Error occurred!");
			out.println("<body><script>");
			out.println("alert('ERROR occurred! Product could not be added! Please try adding again');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");
			
		}
	}

}
