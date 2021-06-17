<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#t_rec {
	float: left;
	width: 300px;
	margin: 30px;
text-align: center;
}

#p_title {
	text-align: center;
}
#mTbl {
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<div id=p_title>
		<p>추천상품
	</div>

		<form action="ProductRecController" method="post"
		enctype="multipart/form-data">
		<table id="mTbl" border="1">

		<c:forEach var="c" items="${coffees}">
		<a href="ProductRecController?no">
		<table border="1" id="t_rec">
					<tr>
						<td id="p_td1"><img src="img/${c.c_img}"
							width="100" height="100"></td>
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
		
		</table>
	</form>
</body>
</html>