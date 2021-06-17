package com.coffe.buy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.semi.c1.Coffee;
import com.semi.c1.DBManager;

public class CoffeDAO {

	public static void getCoffee(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = com.semi.c1.DBManager.connect();
			String sql = "select * from coffee where c_no=?";
			pstmt = con.prepareStatement(sql);
		
			int no = Integer.parseInt(request.getParameter("no"));

			pstmt.setInt(1, no);

			rs = pstmt.executeQuery();


			Coffee c = null;

			if (rs.next()) {
				c = new Coffee();
				c.setC_no(rs.getInt("c_no"));
				c.setC_img(rs.getString("c_img"));
				c.setC_title(rs.getString("c_title"));
				c.setC_price(rs.getInt("c_price"));
				c.setC_explain(rs.getString("c_explain"));
				c.setC_origin(rs.getString("c_origin"));
				/*
				 * c.setC_origin(rs.getString("c_origin"));
				 * c.setC_Information(rs.getString("c_Information"));
				 */

			
			}
			request.setAttribute("c", c);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

}

