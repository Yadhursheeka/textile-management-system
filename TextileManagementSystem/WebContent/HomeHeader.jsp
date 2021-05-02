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
		width:100%;
		height:150px;
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
  padding: 12px 60px;
  text-decoration: none;
}

.navbar1 a:hover {
  background-color: #d5eaff;
  color: black;
  font-weight: bold;
  font-family: "Times New Roman", Times, serif;
  font-size: 20px;
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
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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
  background-color: #d5eaff;
  padding: 8px 10px;
  color: black;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

	<div class="header_container">
			<a href="index.jsp"><img src="images/logo.jpg" alt="Logo" class="header_logo"></a>
			<a href="index.jsp"><h1 class="heading1">World of Fashion</h1></a>
			<br><br><br><br><br><br><br>
	</div>
	
		<hr class="hrStyles">


	<div class="navbar1">
  		<a href="index.jsp">Home</a>
  		<a href="AboutUs.jsp">About Us</a>
  		<a href="ContactUs.jsp">Contact Us</a>
  		<a href="Register.jsp">Register</a>
  		<a href="Login.jsp">Login</a>
  		<a href="AdminHome.jsp">Admin</a>
  		<a href="#"><i class="w3-xxlarge fa fa-shopping-cart"></i></a>
  		
  	</div>
  	
</body>
</html>