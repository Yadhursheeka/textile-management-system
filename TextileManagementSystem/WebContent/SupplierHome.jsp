<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="styles/HomeFooterStyles.css" rel="stylesheet" type="text/css">
<link href="styles/homeFooter.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('https://www.thespruce.com/thmb/wxlPk5Z_FRKDEIZCIJPGgIzYvas=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/MaskotGettyImages-5bcb5cbdc9e77c002de688b3.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
.topnav {
  overflow: hidden;
  background-color: #333;
 
}
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.topnav a.active {
  background-color: #0674A5;
  color: white;
}
.header {
  overflow: hidden;
  background-color:	#052B6A;
  padding: 20px 10px;
}
.header a {
  color: white;
  text-align: center;
  padding: 20px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}
.header a.logo {
  font-size: 40px;
  font-weight: bold;
  }
.header-right {
  float: right;
}
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
 .header-right {
    float: none;
  }
</style>
</head>
<body>

	<%
		if (session.getAttribute("userEmail") == null) {
	%>
			<jsp:include page="HomeHeader.jsp"></jsp:include>
	<%
		} else {
	%>
<div class="header">
  		<img src="https://s1.imghub.io/Hlr9.jpg">
  		<a href="#default" class="logo">WORLD OF FASHION</a>
  </div>
  
<div class="topnav">
  <a class="active" href="SupplierHome.jsp">Home</a>
  <a href="<%=request.getContextPath()%>/new">Register </a> 
  <a href="CategoryWomen.jsp">Garments</a>
  <a href="LogOut_Servlet" style="float:right">Logout</a>
</div>

	<%
	}
	%>
	
	<br><br><br><br>
	
	<h1 style="font-size:3vw; text-align:center;"><b>Welcome to Supplier Dashboard</b></h1>
	<br><br><br>
	
	<table align ="center">
	<tr>
	<th><div class="container text-Center">
	<a href="<%=request.getContextPath()%>/new" class="btn btn-success"><b>Not registered ?</b></a>
			</div>
	<th><div class="container text-Center">
	<a href="<%=request.getContextPath()%>/list" class="btn btn-success" ><b>Already registered ?</b></a>
			</div>
	</tr>
	</table>
			
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			
			<jsp:include page="HomeFooter.jsp"></jsp:include>
</body>
</html>