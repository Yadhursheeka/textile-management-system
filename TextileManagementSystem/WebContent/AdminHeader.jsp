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
<style>
.header_container {
	background-color: #052B6A;
	width: 100%;
	height: 150px;
}

.logo {
	border-radius: 4px;
	padding: 8px;
	width: 200px;
	float: left;
	padding-left: 10px;
	height: 130px;
}

.logo:hover {
	border-radius: 4px;
	padding: 8px;
	width: 220px;
	height: 140px;
}

h1 {
	color: #fff;
	font-size: 50px;
	font-family: "Times New Roman", Times, serif;
	text-align: left;
	margin-top: 0px;
	float: left;
	margin: 0px;
	line-height: 130px;
	padding-left: 10%;
}

h1:hover {
	color: #d5eaff;
	font-size: 54px;
	font-style: italic;
}

hr {
	width: 100%;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 18px;
	color: white;
	text-align: center;
	padding: 12px 70px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: black;
	color: white;
	font-weight: bold;
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 18px;
	border: none;
	outline: none;
	color: white;
	padding: 12px 80px;
	background-color: #333;
	font-family: inherit;
	margin: 0;
}

.dropdown:hover .dropbtn {
	background-color: black;
	font-weight: bold;
	color: white;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 8px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #e6e6ff;
	padding: 8px 10px;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.btn_logout {
	font-size: 18px;
	border: none;
	outline: none;
	color: white;
	padding: 2px 70px;
	background-color: #333;
	font-family: inherit;
}

.btn_logout:hover {
	font-size: 18px;
	border: none;
	outline: none;
	color: white;
	padding: 2px 50px;
	font-family: inherit;
	background-color: black;
	font-weight: bold;
}

.logout a {
	float: right;
	font-size: 18px;
	color: blue;
	text-align: center;
	padding: 12px 50px;
	text-decoration: none;
}
</style>
</head>
<body>

	<div class="header_container">
			<a href="AdminHome.jsp"><img src="images/logo.jpg" alt="Logo" class="logo"></a>
			<a href="index.jsp"><h1>World of Fashion</h1></a>
			<br><br><br><br><br><br><br>
	</div>
	
	<hr>
	
	<div class="navbar">
  		<a href="AdminHome.jsp">Home</a>
  	
  		<div class="dropdown">
    		<button class="dropbtn">Product</button>
    			<div class="dropdown-content">
      				<a href="ProductAdd_Admin.jsp">Add New Product</a>
      				<a href="ProductList_Admin.jsp">View Products</a>
      				<a href="ProductList_Admin.jsp">Search Products</a>
    			</div>
  		</div> 
  		
  		<div class="dropdown">
    		<button class="dropbtn">Report</button>
    			<div class="dropdown-content">
      				<a href="ProductList_Admin.jsp">Product Report</a>
      				<a href="#">Suppliers Report</a>
    				<a href="#">Customers Report</a>
    			</div>
    			
  		</div>
  		<a href="LogOut_Servlet" style="float: right;">Log Out</a>
  	
	</div>
	
</body>
</html>