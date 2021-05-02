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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.header_container {
	background-color: #052B6A;
	width: 100%;
	height: 150px;
}

.header_logo {
	border-radius: 4px;
	padding: 8px;
	width: 200px;
	float: left;
	padding-left: 10px;
	height: 130px;
}

.header_logo:hover {
	border-radius: 4px;
	padding: 8px;
	width: 220px;
	height: 140px;
}

.heading1 {
	color: white;
	font-size: 50px;
	font-family: "Times New Roman", Times, serif;
	text-align: left;
	margin-top: 0px;
	float: left;
	margin: 0px;
	line-height: 130px;
	padding-left: 10%;
}

.heading1:hover {
	color: #d5eaff;
	font-size: 54px;
	font-style: italic;
}

.hrStyles {
	width: 100%;
}

.navbar1 {
	overflow: hidden;
	background-color: #333;
}

.navbar1 a {
	float: left;
	font-size: 20px;
	font-family: "Times New Roman", Times, serif;
	color: white;
	text-align: center;
	padding: 12px 50px;
	text-decoration: none;
}

.navbar1 a:hover {
	background-color: #d5eaff;
	color: black;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	padding: 15px 60px;
	font-size: 20px;
}

.logout {
	float: right;
	overflow: hidden;
	background-color: #333;
	color: white;
	display: inline-block;
	font-size: 20px;
	border: none;
	outline: none;
	padding: 2px 10px;
}

.logout a {
	float: left;
	font-size: 20px;
	font-family: "Times New Roman", Times, serif;
	color: white;
	text-align: center;
	text-decoration: none;
	border: none;
	padding: 2px 10px;
}

.logout:hover {
	background-color: #d5eaff;
	color: black;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	border: none;
	padding: 2px 10px;
	border: none;
	outline: none;
}
</style>
</head>
<body>

	<div class="header_container">
			<a href="HomePage_AfterLogin.jsp"><img src="images/logo.jpg" alt="Logo" class="header_logo"></a>
			<a href="HomePage_AfterLogin.jsp"><h1 class="heading1">World of Fashion</h1></a>
			<br><br><br><br>
	</div>
	
		<hr>


	<div class="navbar1">
	
  		<a href="HomePage_AfterLogin.jsp">Home</a>
  		<a href="Register.jsp">My Account</a>
  		<a href="homeView.jsp">My Orders</a>
  		<a href="ContactUs.jsp">Contact Us</a>
  		<a href="AboutUs.jsp">About Us</a>
		<a href="LogOut_Servlet" style="float: right;">Log Out</a>
  		<a href="#" style="float: right;"><i class="w3-xxlarge fa fa-shopping-cart"></i></a>

  	</div>
  	
</body>
</html>