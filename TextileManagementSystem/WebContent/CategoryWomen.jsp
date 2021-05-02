<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="styles/HomeFooterStyles.css" rel="stylesheet" type="text/css">
<link href="styles/homeFooter.css" rel="stylesheet" type="text/css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
 	background: url("images/bg1.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
    font-family: "Times New Roman", Times, serif;
}
</style>
<title>Womens wear</title>
</head>
<body>

	<%
		if (session.getAttribute("userEmail") == null) {
			
		%>
		<jsp:include page="HomeHeader.jsp"></jsp:include>
		<%
		}
		else if(session.getAttribute("userType").equals("customer")) {
			
		%>
		<jsp:include page="HomeHeader_AfterLogin.jsp"></jsp:include>
		
		<%
		} else  {
		%>
		<jsp:include page="SupplierHeader.jsp"></jsp:include>
		
		<%
		}
		%>

<br>

	<table align ="center">
	<tr>
	<td><div class="container text-left">
	<a href="CategoryMen.jsp" class="btn btn-success"> Men's Wear</a>
	</div></td>
	
	<td><div class="container text-left">
	<a href="CategoryBabies.jsp" class="btn btn-success"> Baby's Wear</a>
	</div>
	</td>
	</tr>
	</table>
	
<br>

	<div class="category_container">
			<h3 class="text-center"><b>Women's Wear </b></h3>
			<hr>
			<div class="container text-left">
			
			<table>
			
			<tr>
			<th><img src = "https://img5.cfcdn.club/a8/95/a8c8703ffc5455f1e0f1bd1dc5c7a895_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/32/04/3266f0973e088b22fd4425d722d1e104_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/c8/5b/c8b10eb7b2e90d072becdfec84a8345b_350x350.jpg">
			</tr>
			<tr align="center">
			<th> Jumpsuits 
			<th> Pyjamas
			<th> Ladies Jeans 
			</tr>
			
			<tr>
			<th><img src = "https://img5.cfcdn.club/81/d4/81d90ba68dc40f6856e3b256ed7aa3d4_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/3d/2f/3d853b7d88c938cb30d1d0ba525a172f_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/5c/6f/5cb446c67b25a94314f4336990ba6b6f_350x350.jpg">
			</tr>
			<tr align="center">
			<th> Long Frocks 
			<th> Big Loose Waist Cotton Blouse
			<th> Long Sleeve Shirt
			</tr>
			</table>
			<br>
		</div>
	</div>
			
			<jsp:include page="HomeFooter.jsp"></jsp:include>
			
</body>
</html>