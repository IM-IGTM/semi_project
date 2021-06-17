<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="checkList_login.js"></script>
<script type="text/javascript" src="validCheck.js"></script>

<script>
	
	function checkId2() {
		let id = document.myForm.regID;
		location.href='IdCheck?regID=' + id.value;	
		alert('${result2}');
	}	
	
</script>




</head>
<body>
	<form action="RegController" method="post" name="myForm"
		onsubmit="return check();">
${result2}		
		<table border="1" id="regTbl" width="400px" height="600px">
			<tr>
				<td class="reg_td">아이디</td>
				<td><input type="text" name="regID"></td>
				<td>	
				<button onclick="checkId2();">아이디 중복확인</button>
				</td>
			</tr>
			<tr>
				<td class="reg_td">비밀번호</td>
				<td><input type="text" name="regPW" placeholder="8글자 이상, 대문자,숫자 포함"></td>
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
				<td><input type="text" name="regPhoneNumber" placeholder="숫자만 입력"></td>
			</tr>
			<tr>
				<td class="reg_td">이메일</td>
				<td><input type="text" name="regEmail">@
		<select name="select" >
       		 <option>naver.com</option>
       		 <option>hanmail.net</option>
       		 <option>gmail.com</option>
        	 <option>nate.com</option>
        </select>		
	 </td>
	 <td><button>이메일 중복확인</button></td>
			</tr>
			
		

			<tr>
				<td><button>회원가입</button></td>
			
			</tr>


		</table>

</form>


</body>
</html>