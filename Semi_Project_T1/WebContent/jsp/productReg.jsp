<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#ttt {
	float: left;
	width: 300px;
	margin: 30px;
	text-align: center;
}

#mTbl {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	${r}

	<h3>상품 등록 페이지</h3>

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
				

			</tr>
			<tr>
				<td colspan="2"><button>등록</button></td>

			</tr>

		</table>
	</form>

</body>
</html>