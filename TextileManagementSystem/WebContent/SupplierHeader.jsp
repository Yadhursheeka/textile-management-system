<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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

</body>
</html>