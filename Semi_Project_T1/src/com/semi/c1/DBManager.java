package com.semi.c1;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//DB 관련 작업을 할 때 매번 연결코드를 쓴 이후 작업 해옴.

//AOP
public class DBManager {
	
	public static Connection connect() throws NamingException, SQLException {
		
		// context.xml
		Context ctx = new InitialContext();
		
		// Connection 대여소
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/ish");
		return ds.getConnection();
	}
	
	// 프로젝트 - 코드 - 배포 -> 서비스 시작
	
	// 튜브 대여소 생각. 요청하면 그제서야 바람불고 줌(기존)
	// DB 서버에 연결 요청하면 준비해놓은 커넥션(튜브) 바로 줌(추가내용)
	
	
	/* 이제 안씁니다
	 * 
	 * // DB 작업시엔 어째튼 연결 해야됨.
	 * 
	 * public static Connection connect() throws SQLException { String url =
	 * "jdbc:oracle:thin:@localhost:1521:xe";
	 * 
	 * return DriverManager.getConnection(url, "sh", "sh");
	 * 
	 * }
	 */
	
	// 닫을 게 많은데 한번에 닫기
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		
		try {
			if(rs != null) {
			rs.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			pstmt.close();
		} catch (Exception e) {
		}
		
		try {
			con.close();
		} catch (Exception e) {
		}
	}

}
