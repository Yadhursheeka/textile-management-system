/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */
package com.itp.servlet;

import java.io.IOException;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itp.model.*;
import com.itp.service.*;

/**
 * Servlet implementation class Contact_AddServlet
 */
@WebServlet("/Contact_AddServlet")
public class Contact_AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact_AddServlet() {
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
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		
		Contact c1 = new Contact();
		c1.setName(name);
		c1.setEmail(email);
		c1.setSubject(subject);
		c1.setMessage(message);
		
		int status = 0;
		
		iContactService i1 = new ContactServiceImpl();
		status = i1.addContact(c1);
		
		if (status > 0) {
			System.out.println("Your Response has been Submitted Successfully! ");
			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Response Submitted Succesfully!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ContactUs.jsp'>");

		}
		else {

			System.out.println("Error occurred!");
			out.println("<body><script>");
			out.println("alert('ERROR occurred! Response Could not be Submitted! Please try adding again');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ContactUs.jsp'>");
			
		}
	}

}
