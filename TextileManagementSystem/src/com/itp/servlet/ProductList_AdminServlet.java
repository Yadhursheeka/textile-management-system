/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */
package com.itp.servlet;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import com.itp.service.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ProductList_AdminServlet
 */
@WebServlet("/ProductList_AdminServlet")
public class ProductList_AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductList_AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("ProductList_Admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		int status = 0;
		
		ProductReportPDF pdf = new ProductReportPDF();
		status = pdf.generateReport();
		
		if (status > 0) {
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Report Generated Successfully!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductList_Admin.jsp'>");

		}
		if (status == 0) {

			System.out.println("Error occurred!");
			System.out.println("status = " + status);
			out.println("<body><script>");
			out.println("alert('ERROR occurred! Report could not be generated!');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");
			
		}
	}

}
