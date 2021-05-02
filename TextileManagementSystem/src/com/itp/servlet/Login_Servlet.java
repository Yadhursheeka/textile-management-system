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
import javax.servlet.http.HttpSession;

import com.itp.service.*;

/**
 * Servlet implementation class Login_Servlet
 */
@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Servlet() {
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
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType = request.getParameter("userType");
		System.out.println("usertype" + userType);
		String adminName = null;
		
		if (userType.equals("admin")) {
			iLoginService il = new LoginServiceImpl();
			
			boolean status = il.adminLogin(email, password);
			
			if (status == true) {
				
				adminName = il.adminName(email);
				
				HttpSession session = request.getSession();
				session.setAttribute("userEmail", email);
				session.setAttribute("userType", userType);
				session.setAttribute("userName", adminName);
				
				System.out.println("Admin Login Successful!");
				
				out.println("<body>");
				out.println("<script>");
				out.println("alert('Admin Login Successful!');");
				out.println("</script>");
				out.println("</body>");
				out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");

			}
			if (status == false) {

				System.out.println("Login Unsuccessful!");
				System.out.println("status = " + status);
				out.println("<body><script>");
				out.println("alert('Invalid user credentials! Please enter correct email and password!');");
				out.println("</script></body>");
				out.println("<meta http-equiv='refresh' content='1 ;URL=Login.jsp'>");
		
			}
				
		}	
		else if (userType.equals("supplier")) {
			iLoginService il = new LoginServiceImpl();
		
			boolean status = il.supplierLogin(email, password);

				if (status == true) {
					System.out.println("Supplier Login Successful!");
			
					HttpSession session = request.getSession();
					session.setAttribute("userEmail", email);
					session.setAttribute("userType", userType);
					
					out.println("<body>");
					out.println("<script>");
					out.println("alert('Supplier Login Successful!');");
					out.println("</script>");
					out.println("</body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=SupplierHome.jsp'>");

				}
				if (status == false) {

					System.out.println("Login Unsuccessful!");
					System.out.println("status = " + status);
					out.println("<body><script>");
					out.println("alert('Invalid user credentials! Please enter correct email and password!');");
					out.println("</script></body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=Login.jsp'>");
			
				}
		}
		else if (userType.equals("customer")) {
			iLoginService il = new LoginServiceImpl();
		
			boolean status = il.customerLogin(email, password);

				if (status == true) {
					System.out.println("Customer Login Successful!");
					
					HttpSession session = request.getSession();
					session.setAttribute("userEmail", email);
					session.setAttribute("userType", userType);
			
					out.println("<body>");
					out.println("<script>");
					out.println("alert('Customer Login Successful!');");
					out.println("</script>");
					out.println("</body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=HomePage_AfterLogin.jsp'>");

				}
				if (status == false) {

					System.out.println("Login Unsuccessful!");
					System.out.println("status = " + status);
					out.println("<body><script>");
					out.println("alert('Invalid user credentials! Please enter correct email and password!');");
					out.println("</script></body>");
					out.println("<meta http-equiv='refresh' content='1 ;URL=Login.jsp'>");
			
				}
		}
		else {
			out.println("<body><script>");
			out.println("alert('Invalid user credentials! Please enter correct email and password!');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=Login.jsp'>");
		}
			
		out.close();
	}

}
