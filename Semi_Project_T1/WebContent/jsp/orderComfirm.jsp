<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table><tr><td>주문내역</td></tr></table>

	<table>
	<tr>
		<td>주문 정보</td>
	</tr>
	
	<tr>
		<td>주문하신 분</td>
		<td>${param.orderName }</td>
	</tr>

	<tr>
		<td>주소</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	
	<tr>
		<td>연락처</td>
		<td>${param.orderPhoneNumber1 }</td>
		<td>${param.orderPhoneNumber2 }</td>
		<td>${param.orderPhoneNumber3 }</td>
	</tr>

	<tr>
		<td>이메일</td>
		<td>${param.mailAddress1 }</td>
		<td>@</td>
		<td>${param.mailAddress2 }</td>
	</tr>
	
</table>
<hr>
<table>
	<tr>
		<td>받으시는 분</td>
		<td>${param.reciveName }</td>
	</tr>
	
	<tr>
		<td>주소</td>
		<td>${param.reciveAddress }</td>
	</tr>
	
	<tr>
		<td>연락처</td>
		<td>${param.recivePhoneNumber1 }</td>
		<td>${param.recivePhoneNumber2 }</td>
		<td>${param.recivePhoneNumber3 }</td>
		<td></td>
	</tr>

	<tr>
		<td>배송 메세지</td>
		<td>${param.reciveMessage }</td>
	</tr>

	<tr>
		<td>주문이 완료 되었습니다</td>
	</tr>
</table>	

</body>
</html>