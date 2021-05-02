<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Mens' wear</title>
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
		} else {
		%>
		<jsp:include page="SupplierHeader.jsp"></jsp:include>
		<%
		}
		%>

<br>

	<table align ="center">
<tr>
	<td><div class="container text-left">
	<a href="CategoryWomen.jsp" class="btn btn-success"> Women's Wear</a>
	</div>
	
	<td><div class="container text-left">
	<a href="CategoryBabies.jsp" class="btn btn-success"> Baby's Wear</a>
	</div>
	</tr>
	</table>
<br>

	<div class="container">
			<h3 class="text-center"><b>Men's Wear </b></h3>
			<hr>
			<div class="container text-left">
			
			<table>
			
			<tr>
			<th><img src = "https://img5.cfcdn.club/4d/4d/4dd3bf3c2dcd96f6fa42a87006eb0d4d_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/71/2d/715c2a2d34bc1b0c6601f7cce310ef2d_350x350.jpg">
			<th><img src = "https://img5.cfcdn.club/06/31/0689f33cac21d1c62bb9c856a184f131_350x350.jpg">
			</tr>
			<tr align="center">
			<th> Short Sleeve Cotton Jerseys Polo Shirts
			<th> Men's Sport Fashion Shorts Pants
			<th> Men'S Digital Print Casual Pants
			</tr>
			</table>
			<br>
			</div>
		</div>
			
			<jsp:include page="HomeFooter.jsp"></jsp:include>
			
</body>
</html>