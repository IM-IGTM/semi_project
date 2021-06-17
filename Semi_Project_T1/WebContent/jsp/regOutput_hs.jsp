<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" id="regOutputTbl">
<tr>
<td id="regResult_td">
 ${result }
</td>
</tr>
 <tr>
   <td colspan="2"  class="login_td">id <input name="id"></td>
 </tr>
 <tr>
   <td colspan="2"  class="login_td">pw <input name="pw"></td>
 </tr>	
  <tr>
   <td><button >로그인</button></td>
</form>
<form action="RegController" method="post">
   <td><button >회원가입</button></td>
 </form>
 </tr>
</table>
 
</body>
</html>