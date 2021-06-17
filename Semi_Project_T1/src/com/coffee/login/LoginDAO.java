package com.coffee.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hs.main.DBManager;

public class LoginDAO {

	
	public static void login(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String userID = request.getParameter("id");
		String userPW = request.getParameter("pw");

		try {
			String sql = "select * from regMember where m_regID = ?";

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, userID);
			String hszzang = null;
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String dbID = rs.getString("m_regID");
				String dbPW = rs.getString("m_regPW");
				System.out.println(dbID);
				if (userPW.equals(dbPW)) {
					Member m = new Member();
					m.setM_regID((dbID));
					m.setM_regPW((dbPW));
					request.setAttribute("result", "�α��� ����!");

					HttpSession hs = request.getSession();
					hs.setMaxInactiveInterval(5);

					hs.setAttribute("member", m);
					hszzang = "location.href='jsp/index.jsp'";
					request.setAttribute("hszzang", hszzang);
				} else {
					request.setAttribute("result", "��й�ȣ ����!");
				hszzang = "history.back()";
				request.setAttribute("hszzang", hszzang);
				}
			} else {
				request.setAttribute("result", "�������� �ʴ� ȸ���Դϴ�!");
				hszzang = "history.back()";
				request.setAttribute("hszzang", hszzang);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}



	public static void reg(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.connect();

			String sql = "insert into regMember values(?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);

			String regID = request.getParameter("regID");
			String regPW = request.getParameter("regPW");
			String regPW2 = request.getParameter("regPW2");
			String regName = request.getParameter("regName");
			String regAddr = request.getParameter("regAddr");
			int regPhoneNumber = Integer.parseInt(request.getParameter("regPhoneNumber"));
			String regEmail = request.getParameter("regEmail");

			pstmt.setString(1, regID);
			pstmt.setString(2, regPW);
			pstmt.setString(3, regPW2);
			pstmt.setString(4, regName);
			pstmt.setString(5, regAddr);
			pstmt.setInt(6, regPhoneNumber);
			pstmt.setString(7, regEmail);

				if (pstmt.executeUpdate() == 1) {
					request.setAttribute("result", "ȸ�������� �Ϸ�Ǿ����ϴ�");
				} 

			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("result", "ȸ������ ����");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public static void checkId(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String regID = request.getParameter("regID");

		try {
			String sql = "select m_regID from regMember where m_regID = ?";

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, regID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
			//	String dbID = rs.getString("m_regID");
			//	if (dbID.equals(regID)) {

				request.setAttribute("result2", "�ߺ��� ���̵� �����մϴ�.");
				} else {
					request.setAttribute("result2", "����Ͻ� �� �ִ� ���̵��Դϴ�.");
				}
				
			
		}	
			catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void update(HttpServletRequest request) {

		
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			con = DBManager.connect();

			String sql = "update regMember " + "set m_regPW=?, m_regAddr=?, m_regPhoneNumer=?, m_regEmail=? " + "where m_regID=?";
			pstmt = con.prepareStatement(sql);

			request.setCharacterEncoding("utf-8");			
			
			
			String regPW = request.getParameter("regPW");
			String regAddr = request.getParameter("regAddr");
			int regPhoneNumber = Integer.parseInt(request.getParameter("regPhoneNumber"));
			String regEmail = request.getParameter("regEmail");
			String regID = request.getParameter("regID");

			pstmt.setString(1, regPW);
			pstmt.setString(2, regAddr);
			pstmt.setInt(3, regPhoneNumber);
			pstmt.setString(4, regEmail);
			pstmt.setString(5, regID);

			Member member = new Member();
			request.setAttribute("member", member);
			if (pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "������Ʈ ����");
			} else {
				request.setAttribute("r", "������Ʈ ����");
			}

		} catch (Exception e) {
			request.setAttribute("r", "DB���� ����");
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);

		}

	}



}
