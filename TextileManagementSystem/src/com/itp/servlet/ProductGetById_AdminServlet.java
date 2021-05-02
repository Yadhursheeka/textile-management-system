package com.itp.servlet;

/*
 * @author V. Yahdhursheika - IT19186948
 *  
 * ITP 2020 Textile Management System
 */

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itp.model.*;
import com.itp.service.*;

/**
 * Servlet implementation class ProductGetById_AdminServlet
 */
@WebServlet("/ProductGetById_AdminServlet")
public class ProductGetById_AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductGetById_AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		
		iProductService ip = new ProductServiceImpl();
		Product p1 = ip.getProductById(id);

		request.setAttribute("p1", p1);
		
		RequestDispatcher rd = request.getRequestDispatcher("ProductEdit_Admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		
		iProductService ip = new ProductServiceImpl();
		Product p1 = ip.getProductById(id);

		request.setAttribute("p1", p1);
		
		if (p1.getProductID() == null) {
			PrintWriter out = response.getWriter();
			out.println("<body>");
			out.println("<script>");
			out.println("alert('No Product Exists with that ID!!');");
			out.println("</script>");
			out.println("</body>");
			out.println("<meta http-equiv='refresh' content='1 ;URL=ProductList_Admin.jsp'>");
		}
		else {
		RequestDispatcher rd = request.getRequestDispatcher("ProductRetrieve_Admin.jsp");
		rd.forward(request, response);
		}
	}

}
