<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="checkList_login.js"></script>
<script type="text/javascript" src="validCheck.js"></script>


</head>
<body>
<form action="RegController" method="post"  name="myForm" onsubmit="return check();">
<table border="1" id="regTbl" width="400px" height="600px">
<tr>
<td class="reg_td">아이디</td>
<td> <input type="text" name="regID"> </td>
</tr>
<tr>
<td class="reg_td">비밀번호</td>
<td> <input type="text" name="regPW"> </td>
</tr>
<tr>
<td class="reg_td">비밀번호 확인</td>
<td> <input type="text" name="regPW2"> </td>
</tr>
<tr>
<td class="reg_td">이름</td>
<td> <input type="text" name="regName"> </td>
</tr>
<tr>
<td class="reg_td">주소</td>
<td> <input type="text" name="regAddr"> </td>
</tr>
<tr>
<td class="reg_td">휴대전화</td>
<td> <input type="text" name="regPhoneNumber"> </td>
</tr>
<tr>
<td class="reg_td">이메일</td>
<td> <input type="text" name="regEmail"> </td>
</tr>
</form>

<tr>
<td><button>회원가입</button></td>
<form action="NewFile.html">
<td><button>회원가입 취소</button></td>
</form>
</tr>






</table>

</body>
</html>