package com.semi.c1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;




public class C {
	
	public static void getAllCoffees2(HttpServletRequest request) {
		// R select

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			
			String order = request.getParameter("order");
			String sql = "select * from coffee order by " +order;
			
			
			
			
			
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			// rs.next()는 데이터가 있으면 참 없으면 거짓

			ArrayList<Coffee> coffees = new ArrayList<Coffee>();

			Coffee c = null;
			while (rs.next()) {

				// 객체 (한번에 묶어서 처리) - Bean 필요
				c = new Coffee();

				c.setC_no(rs.getInt("c_no"));
				c.setC_title(rs.getString("c_title"));
				c.setC_price(rs.getInt("c_price"));
				c.setC_origin(rs.getString("c_origin"));
				c.setC_img(rs.getString("c_img"));
				c.setC_explain(rs.getString("c_explain"));

				coffees.add(c);
			}

			request.setAttribute("coffees", coffees);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);

		}

	}

	public static void getAllCoffees(HttpServletRequest request) {
		// R select

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select * from coffee order by c_no";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			// rs.next()는 데이터가 있으면 참 없으면 거짓

			ArrayList<Coffee> coffees = new ArrayList<Coffee>();

			Coffee c = null;
			while (rs.next()) {

				// 객체 (한번에 묶어서 처리) - Bean 필요
				c = new Coffee();

				c.setC_no(rs.getInt("c_no"));
				c.setC_title(rs.getString("c_title"));
				c.setC_price(rs.getInt("c_price"));
				c.setC_origin(rs.getString("c_origin"));
				c.setC_img(rs.getString("c_img"));
				c.setC_explain(rs.getString("c_explain"));

				coffees.add(c);
			}

			request.setAttribute("coffees", coffees);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);

		}

	}

	
	
	
	
	public static void regProduct(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = DBManager.connect();

			String sql = "insert into coffee values (coffee_seq.nextval, ?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);

			String saveDirectory = request.getServletContext().getRealPath("img");
			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8",
					new DefaultFileRenamePolicy());
			System.out.println("등록!");
			String name = mr.getParameter("title");
			int price = Integer.parseInt(mr.getParameter("price"));
			String explain = mr.getParameter("explain");
			String fname = mr.getFilesystemName("file");
			String origin = mr.getParameter("origin");

			pstmt.setString(1, name);
			pstmt.setInt(2, price);
			pstmt.setString(3, fname);
			pstmt.setString(4, origin);
			pstmt.setString(5, explain);

			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "등록성공");
			} else {
				request.setAttribute("r", "등록실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB오류");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}





	public static void getRecCoffees(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select c_no, c_title, c_price, c_img, c_explain, c_origin from coffee where c_price = (select max(c_price) from coffee)";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			// rs.next()는 데이터가 있으면 참 없으면 거짓

			ArrayList<Coffee> coffees = new ArrayList<Coffee>();

			Coffee c = null;
			while (rs.next()) {

				// 객체 (한번에 묶어서 처리) - Bean 필요
				c = new Coffee();

				c.setC_no(rs.getInt("c_no"));
				c.setC_title(rs.getString("c_title"));
				c.setC_price(rs.getInt("c_price"));
				c.setC_img(rs.getString("c_img"));
				c.setC_explain(rs.getString("c_explain"));
				c.setC_origin(rs.getString("c_origin"));

				coffees.add(c);
			}

			request.setAttribute("coffees", coffees);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);

		}

	}
		
	}
	
