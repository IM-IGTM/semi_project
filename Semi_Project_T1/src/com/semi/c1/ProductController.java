package com.semi.c1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		C.getAllCoffees(request);
		request.setAttribute("contentPage", "product.jsp");
		request.getRequestDispatcher("jsp/index2.za.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		/*
		 * C.regProduct(request); request.setAttribute("contentPage", "product.jsp");
		 * request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
		 */
	}

}
