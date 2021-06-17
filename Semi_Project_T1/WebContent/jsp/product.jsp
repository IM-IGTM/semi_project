<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/product.za.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;200&family=Nanum+Gothic&display=swap" rel="stylesheet">

</head>

<body>
	${r}
	<p>
	<div id=p_title>
		<p>상품 전체 보기
	</div>

	<hr>
	<div id=p_list border="1">
		total : ${fn:length(coffees)}<br> 
		<a href= "ProductPagingController?order=c_title">상품명  </a> 
		<a href="ProductPagingController?order=c_price desc">높은가격순  </a> 
		<a href="ProductPagingController?order=c_price">낮은가격순  </a>

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