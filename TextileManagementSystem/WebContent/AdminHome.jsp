<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background: url("images/Admin_BG.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.Y_h1_welcome {
	background-color: white;
	color: #00009b;
	text-align: center;
	font-size: 40px;
	font-style: italic;
	float: right;
	padding-right: 110px;
}

.Y_h1_welcome:hover {
	background-color: white;
	font-size: 46px;
	color: #6cb6ff;
	font-weight: bold;
}

.Y_h1_welcome1 {
	background-color: white;
	color: #00009b;
	font-size: 40px;
	font-style: italic;
	text-align: center;
}

.Y_h1_welcome1:hover {
	background-color: white;
	font-size: 44px;
	color: #6cb6ff;
	font-weight: bold;
}

.adminStyles {
	background: url("images/bg1.jpg");
	padding: 16px;
	margin-top: 0%;
	margin-left: 25%;
	margin-right: 25%;
	color: black;
	height: 400px;
	width: 50%;
}

.image {
	float: left;
	width: 45%;
	height: 400px;
}

.adminContainer {
	padding: 16px;
	padding-left: 0px;
	margin-top: 0%;
	color: black;
	height: 380px;
	float: right;
	width: 50%;
}
</style>
</head>
<body>

	<%
		if (session.getAttribute("userEmail") == null || session.getAttribute("userType").equals("customer")
				|| session.getAttribute("userType").equals("supplier")) {

			response.sendRedirect("Login.jsp");
		}
	%>
		<%
			String userName = (String) session.getAttribute("userName");
		%>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	
	<br><br><br>
	
	<div class="adminStyles">
		
		<img src="images/a1.jpg" class="image">
		
		<div class="adminContainer">
				<% out.print("<h1 class='Y_h1_welcome'>Welcome </h1>" +
					"<h1 class='Y_h1_welcome1'>" + userName + "!</h1>"); %>
		</div>
	
	</div>
	
	<br><br><br><br><br><br>
	
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	
</body>
</html>