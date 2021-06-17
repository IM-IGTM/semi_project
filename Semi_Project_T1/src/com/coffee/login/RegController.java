package com.coffee.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegController")
public class RegController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		LoginDAO.checkId(request);
		
		request.getRequestDispatcher("jsp/reg_hs.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	LoginDAO.reg(request);
		
	request.getRequestDispatcher("jsp/regOutput_hs.jsp").forward(request, response);
	
	
	}

}
