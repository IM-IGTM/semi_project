<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/productReg.za.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Mate+SC&display=swap" rel="stylesheet">

</head>
<body>
	${r}
	<h4>상품 등록 페이지</h4>

	<form action="ProductRegController" method="post"
		enctype="multipart/form-data">
		<table id="mTbl" border="1">

			<tr>
				<td>커피 이름</td>
				<td><input name="title"></td>
			</tr>
			<tr>
				<td>커피 가격</td>
				<td><input name="price"></td>
			</tr>
			<tr>
				<td>커피 사진</td>
				<td><img src="img/${c.c_img}" width="100px;"><br> <input
					type="file" name="file"></td>
			</tr>
			<tr>
				<td>커피 설명</td>
				<td><textarea name="explain"> </textarea></td>
			</tr>
			<tr>
			<td>커피 원산지</td>
			<td><input name="origin" ></td>
				<%-- <td><input name="no" value="${param.no}" type="hidden">
				</td> --%>

			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>

			</tr>

		</table>
	</form>
	</body>
</html>