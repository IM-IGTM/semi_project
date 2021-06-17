<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
		<tr>
			<td class="siteMenu" align="center"><a href="HC">홈</a></td>
			<td class="siteMenu" align="center"><a href="Login">Login</a></td>
			<td class="siteMenu" align="center"><a href="Join">Join</a></td>
			<td class="siteMenu" align="center"><a href="ProductController">Product</a></td>
			<td class="siteMenu" align="center"><a href="ProductRegController">상품등록</a></td>
		</tr>

		<tr>
			<td colspan="5">
				<table id="site">
					<tr>
					<td><jsp:include page="${contentPage}"></jsp:include></td>
					</tr>
				</table>
			</td>
		</tr>

	</table>
</body>
</html>