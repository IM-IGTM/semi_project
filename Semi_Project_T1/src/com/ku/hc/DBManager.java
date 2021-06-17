package com.ku.hc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//여기서 aop를 하자

public class DBManager {
	
	public static Connection connect() throws NamingException, SQLException {
		
		
		//context.xml
		Context ctx =new InitialContext();
		//Connection 대여소--튜브 대여소--유지보수하기 위해 이 프로그램으 사용
		DataSource ds=(DataSource) ctx.lookup("java:comp/env/ish");
		return ds.getConnection();
	}
	
	
	//프로젝트-코드-배포-서비스시작
	
	//튜브 대여소 생각, 요청하면 그제서야 만드는것---기존
	//db서버에 요청하면 준비해놓은 커넥션(튜브)바로 줌---추가내용
	
	
	/*이제 안쓸꺼
	 * 
	 * public static Connection connect() throws SQLException {
	 * 
	 * String url="jdbc:oracle:thin:@localhost:1521:xe"; return
	 * DriverManager.getConnection(url, "su", "su");
	 * 
	 * }
	 */
	// close --반납 
public static void close(Connection con,PreparedStatement pstmt,ResultSet rs) {
	try {
		rs.close();
	} catch (Exception e) {
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

