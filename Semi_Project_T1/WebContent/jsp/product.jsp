<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ttt {
	float: left;
	width: 300px;
	margin: 30px;
	text-align: center;
}

#p_title {
	text-align: center;
}
</style>
</head>
<body>
	${r}
	<p>
	<div id=p_title>
		<p>상품전체보기
	</div>

	<hr>
	<div id=p_list border="1">
		total : ${fn:length(coffees)}<br> 
		<a href= "ProductPagingController">상품명</a> 
		<a href="ProductPagingController">높은가격순</a> 
		<a href="ProductPagingController">낮은가격순</a>

	</div>



	<form action="ProductController" method="post"
		enctype="multipart/form-data">


		<c:forEach var="c" items="${coffees}">
			<a href="OctionSelect?no=${c.c_no}">
				<table border="1" id="ttt">
					<tr>
						<td id="p_td1"><img src="img/${c.c_img}" width="100"
							height="100"></td>
					</tr>


					<tr>

						<td id="p_td1">${c.c_title}</td>
					</tr>

					<tr>

						<td id="p_td1">${c.c_price}</td>
					</tr>

					<tr>

						<td id="p_td1">${c.c_explain}</td>
					</tr>

				</table>
			</a>
		</c:forEach>

	</form>
</body>
</html>