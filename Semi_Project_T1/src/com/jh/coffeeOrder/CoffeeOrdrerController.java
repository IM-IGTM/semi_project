package com.jh.coffeeOrder;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CoffeeOrderController")
public class CoffeeOrdrerController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CoffeeOrderDAO.orderReg(request);
		CoffeeOrderDAO.reciveReg(request);
		request.getRequestDispatcher("jsp/orderComfirm.jsp").forward(request, response);
	
	}

}
