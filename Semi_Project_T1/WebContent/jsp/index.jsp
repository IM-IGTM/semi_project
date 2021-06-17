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
		<h1><a href="HC">Coffee</a></h1>
	</header>

	<nav>

		<ul class="container">
			<li class="mainS"><a href="ProductController">Product</a></li>
			<li class="mainS"><a href="EventController">Event</a></li>

			<li class="siteMenu" align="center"><a href="ProductRegController">Register</a></li>
			<li class="mainS">
		<a href="HC2">Login</a>


			</li>
			</ul>
	</nav>

<div class="section">
	<input type="radio" name="slide" id="slide01" checked>
	<input type="radio" name="slide" id="slide02">
	<input type="radio" name="slide" id="slide03">
	<div class="slidewrap">
		
		<ul class="slidelist">
			<li class="slideitem">
				<a>
					<img src="./img.za/1.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="./img.za/2.jpg">
				</a>
			</li>
			<li class="slideitem">
				<a>
					<img src="./img.za/3.jpg">
				</a>
			</li class="slideitem">

			<div class="slide-control">
				<div>
					<label for="slide03" class="left"></label>
					<label for="slide02" class="right"></label>
				</div>
				<div>
					<label for="slide01" class="left"></label>
					<label for="slide03" class="right"></label>
				</div>
				<div>
					<label for="slide02" class="left"></label>
					<label for="slide01" class="right"></label>
				</div>
			</div>

		</ul>
		<ul class="slide-pagelist">
			<li><label for="slide01"></label></li>
			<li><label for="slide02"></label></li>
			<li><label for="slide03"></label></li>
		</ul>
	</div>


</div>

	<table id="site">
					<tr>
					<td><jsp:include page="${contentPage}"></jsp:include></td>
					</tr>
				</table>

</body>

			

</body>
</html>