package com.coffe.buy;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.c1.C;


@WebServlet("/BuyNowController")
public class BuyNowController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		if (request.getParameter("wl")!=null) {
		//	CoffeDAO.getAllWhish();
			request.setAttribute("contentPage", "whish.jsp");
			
		}else if (request.getParameter("atc")!=null) {
			//CoffeDAO.getAllCart();
			request.setAttribute("contentPage", "cart.jsp");
		}else {
			
			request.setAttribute("contentPage", "login.jsp");
			
		
		}
		
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (request.getParameter("Nojoin")!=null||request.getParameter("login")!=null) {
			//일 시키기
			request.setAttribute("contentPage", "order.jsp");
			
		}else if (request.getParameter("join")!=null||request.getParameter("whish")!=null) {
			
			request.setAttribute("contentPage", "login.jsp");
		}
	
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
	
			
			
			
		
		
		
		
	}

}
