<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.za.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Mate+SC&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@200&display=swap" rel="stylesheet">
</head>
<body>


<body>

	<header>
		<h1><a href="HC">Coffee </a></h1>
	</header>

	<nav>

		<ul class="container">
			<li class="mainS"><a href="ProductController">Product</a></li>
			<li class="mainS"><a href="EventController">Event</a></li>
			<li class="siteMenu" align="center"><a href="ProductRegController">Register</a></li>
			<li class="mainS">
		<a href="">Login</a>
			</li>
			</ul>
	</nav>


	<table id="site">
					<tr>
					<td><jsp:include page="${contentPage}"></jsp:include></td>
					</tr>
				</table>

</body>

			

</body>
</html>