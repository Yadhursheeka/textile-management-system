package com.itp.servlet;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

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
 * Servlet implementation class ProductDelete_AdminServlet
 */
@WebServlet("/ProductDelete_AdminServlet")
public class ProductDelete_AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDelete_AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String ID = request.getParameter("id");
		
		int status = 0;
		
		iProductService ip = new ProductServiceImpl();
		status = ip.deleteProduct(ID);
		
		Product p1 = new Product();
		p1 = ip.getProductById(ID);
		
		
		if (status > 0) {
			System.out.println("Product " + p1.getProductName() + "Successfully Deleted!");			
			out.println("<body>");
			out.println("<script>");
			out.println("alert('Product Successfully Deleted!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductList_Admin.jsp'>");

		}
		else {

			System.out.println("Error occurred!");
			out.println("<body><script>");
			out.println("alert('ERROR occurred! Product could not be deleted! Please try deleting again');");
			out.println("</script></body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=AdminHome.jsp'>");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
