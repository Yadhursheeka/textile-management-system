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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Babies wear</title>
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
	<a href="CategoryMen.jsp" class="btn btn-success"> Men's Wear</a>
	</div>
	
	<td><div class="container text-left">
	<a href="CategoryWomen.jsp" class="btn btn-success"> Women's Wear</a>
	</div>
	</tr>
	</table>
	
		<br>
			<h3 class="text-center"><b>Baby's Wear </b></h3>
			<hr>
			<div class="container text-left">
			
			<table>
			
			<tr>
			<th><img src = "https://img5.cfcdn.club/9c/3b/9cc6eac01c5a1caefed51b4bf8280c3b_350x350.jpg"></th>
			<th><img src = "https://img5.cfcdn.club/a1/dc/a1cf1bc06078f4efe5c3dbd24bb03cdc_350x350.jpg"></th>
			<th><img src = "https://img5.cfcdn.club/c3/2c/c3763b1ed6feb7eee1a50b83714f902c_350x350.jpg"></th>
			</tr>
			<tr align="center">
			<th> Baby Jumpsuits</th>
			<th> Boys' Wear Suits Baby Fashion Coat</th>
			<th> Baby wear padded clothes</th>
			</tr>
			
			<tr>
			<th><img src = "https://img5.cfcdn.club/40/a9/40e749a155dd9bfca8c97406cb5ab4a9_350x350.jpg"></th>
			<th><img src = "https://img5.cfcdn.club/8f/04/8fdb8fd0ad1c77a27a6884673ca45704_350x350.jpg"></th>
			<th><img src = "https://img5.cfcdn.club/fb/11/fbbb83dfcb117c7aeee5af40c9368c11_350x350.jpg"></th>
			</tr>
			<tr align="center">
			<th> Baby Hoodies</th>
			<th> Baby Sleeveless frocks </th>
			<th> Baby Pyjamas</th>
			</tr>
			</table>
			
			</div>
			<br>

		<jsp:include page="HomeFooter.jsp"></jsp:include>
		
</body>
</html>