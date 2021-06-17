<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/reg_za.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200&display=swap" rel="stylesheet">
<script type="text/javascript" src="checkList_login.js"></script>
<script type="text/javascript" src="validCheck.js"></script>



</head>
<body>
	<form action="RegController" method="post" name="myForm"
		onsubmit="return check();">
			<h2>회원가입</h2>
	
		<table id="regTbl" width="200px" height="300px">
         <tr>
            <td class="reg_td">아이디</td>
            <td><input type="text" name="regID"></td>
         </tr>
         <tr>
            <td class="reg_td">비밀번호</td>
            <td><input type="text" name="regPW"></td>
         </tr>
         <tr>
            <td class="reg_td">비밀번호 확인</td>
            <td><input type="text" name="regPW2"></td>
         </tr>
         <tr>
            <td class="reg_td">이름</td>
            <td><input type="text" name="regName"></td>
         </tr>
         <tr>
            <td class="reg_td">주소</td>
            <td><input type="text" name="regAddr"></td>
         </tr>
         <tr>
            <td class="reg_td">휴대전화</td>
            <td><input type="text" name="regPhoneNumber"></td>
         </tr>
         <tr>
            <td class="reg_td">이메일</td>
            <td><input type="text" name="regEmail"></td>
         </tr>
         </form>

         <tr>
            <form action="NewFile.html">
                <td colspan="2" class="button_td">
                    <button>회원가입</button>
                    <button>회원가입 취소</button>
                </td>
            </form>
         </tr>
      </table>



</body>
</html>