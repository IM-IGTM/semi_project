package com.jh.coffeeOrder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.coffeeOrderMain.DBManager;

public class CoffeeOrderDAO {
	
	public static void orderReg(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			request.setCharacterEncoding("utf-8");
			
			String sql = "insert into order_Coffee values (order_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			String orderName = request.getParameter("orderName");
			String orderPostcode = request.getParameter("orderPostcode");
			String orderRoadAddress = request.getParameter("orderRoadAddress");
			String orderJibunAddress = request.getParameter("orderJibunAddress");
			String orderExtraAddress = request.getParameter("orderExtraAddress");
			int orderPhoneNumber1 =Integer.parseInt(request.getParameter("orderPhoneNumber1"));
			int orderPhoneNumber2 =Integer.parseInt(request.getParameter("orderPhoneNumber2"));
			int orderPhoneNumber3 =Integer.parseInt(request.getParameter("orderPhoneNumber3"));
			String mailAddress1 = request.getParameter("mailAddress1");
			String mailAddress2 = request.getParameter("mailAddress2");
			
			pstmt.setString(1, orderName);
			pstmt.setString(2, orderPostcode);
			pstmt.setString(3, orderRoadAddress);
			pstmt.setString(4, orderJibunAddress);
			pstmt.setString(5, orderExtraAddress);
			pstmt.setInt(6, orderPhoneNumber1);
			pstmt.setInt(7, orderPhoneNumber2);
			pstmt.setInt(8, orderPhoneNumber3);
			pstmt.setString(9, mailAddress1);
			pstmt.setString(10, mailAddress2);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("order", "order");
			}else {
				request.setAttribute("order", "order");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("order", "DB서버오류");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void reciveReg(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			request.setCharacterEncoding("utf-8");
			
			String sql = "insert into recive_Coffee values (recive_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = con.prepareStatement(sql);
			
			
			String reciveName = request.getParameter("reciveName");
			String recivePostcode = request.getParameter("recivePostcode");
			String reciveRoadAddress = request.getParameter("reciveRoadAddress");
			String reciveJibunAddress = request.getParameter("reciveJibunAddress");
			String reciveExtraAddress = request.getParameter("reciveExtraAddress");
			int recivePhoneNumber1 =Integer.parseInt(request.getParameter("recivePhoneNumber1"));
			int recivePhoneNumber2 =Integer.parseInt(request.getParameter("recivePhoneNumber2"));
			int recivePhoneNumber3 =Integer.parseInt(request.getParameter("recivePhoneNumber3"));
			String reciveMessage = request.getParameter("reciveMessage");
			
			pstmt.setString(1, reciveName);
			pstmt.setString(2, recivePostcode);
			pstmt.setString(3, reciveRoadAddress);
			pstmt.setString(4, reciveJibunAddress);
			pstmt.setString(5, reciveExtraAddress);
			pstmt.setInt(6, recivePhoneNumber1);
			pstmt.setInt(7, recivePhoneNumber2);
			pstmt.setInt(8, recivePhoneNumber3);
			pstmt.setString(9, reciveMessage);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("recive", "주문완료");
			}else {
				request.setAttribute("recive", "주문실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("recive", "DB서버오류");
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	
	
	public static void getOrder(HttpServletRequest request) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				con = DBManager.connect();
				
				String sql = "select * from order_Coffee";
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				CoffeeOrderInfo i = null;
				ArrayList<CoffeeOrderInfo> orderInfo = new ArrayList<CoffeeOrderInfo>();
				if (rs.next()) {
					i = new CoffeeOrderInfo();
					i.setO_no(rs.getInt("o_no"));
					i.setO_name(rs.getString("o_name"));
					i.setO_postcode(rs.getString("o_postcode"));
					i.setO_roadaddress(rs.getString("o_roadaddress"));
					i.setO_jibunaddress(rs.getString("o_jibunaddress"));
					i.setO_extraaddress(rs.getString("o_extraaddress"));
					i.setO_phone1(rs.getInt("o_phone1"));
					i.setO_phone2(rs.getInt("o_phone2"));
					i.setO_phone1(rs.getInt("o_phone3"));
					i.setO_mail1(rs.getString("o_mail1"));
					i.setO_mail2(rs.getString("o_mail2"));
					
					orderInfo.add(i);		
				}
				request.setAttribute("orderInfo", orderInfo);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(con, pstmt, rs);
			}
	}
	
	public static void getRecive(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			
			String sql = "select * from recive_Coffee";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			CoffeeReciveInfo r = null;
			ArrayList<CoffeeReciveInfo> reciveInfo = new ArrayList<CoffeeReciveInfo>();
			if (rs.next()) {
				r = new CoffeeReciveInfo();
				r.setR_no(rs.getInt("r_no"));
				r.setR_name(rs.getString("r_name"));
				r.setR_postcode(rs.getString("r_postcode"));
				r.setR_roadaddress(rs.getString("r_roadaddress"));
				r.setR_jibunaddress(rs.getString("r_jibunaddress"));
				r.setR_extraaddress(rs.getString("r_extraaddress"));
				r.setR_phone1(rs.getInt("r_phone1"));
				r.setR_phone2(rs.getInt("r_phone2"));
				r.setR_phone1(rs.getInt("r_phone3"));
				r.setR_message(rs.getString("r_message"));
				
				reciveInfo.add(r);		
			}
			request.setAttribute("reciveInfo", reciveInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

}
