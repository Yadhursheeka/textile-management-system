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

/**
 * Servlet implementation class LogOut_Servlet
 */
@WebServlet("/LogOut_Servlet")
public class LogOut_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogOut_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("userEmail");
		session.removeAttribute("userType");
		session.removeAttribute("userName");
		session.invalidate();
		
		PrintWriter out = response.getWriter();
		
		out.println("<body>");
		out.println("<script>");
		out.println("alert('Logged Out Successfully!');");
		out.println("</script>");
		out.println("</body>");
		out.println("<meta http-equiv='refresh' content='1 ;URL=index.jsp'>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("userEmail");
		session.removeAttribute("userType");
		session.removeAttribute("userName");
		session.invalidate();
		
		PrintWriter out = response.getWriter();
		
		out.println("<body>");
		out.println("<script>");
		out.println("alert('Logged Out Successfully!');");
		out.println("</script>");
		out.println("</body>");
		out.println("<meta http-equiv='refresh' content='1 ;URL=index.jsp'>");
	}

}
