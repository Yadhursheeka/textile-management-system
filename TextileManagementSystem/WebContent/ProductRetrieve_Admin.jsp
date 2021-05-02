<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.itp.model.*" %>
<%@ page import="com.itp.service.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Retrieve Product</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background: url("images/Admin_BG.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}

h2 {
	margin-top: 0%;
	color: #00009b;
	text-align: center;
	font-size: 34px;
	font-style: italic;
}
h2:hover {
	font-size: 36px;
	color: #6cb6ff;
}
.heading_list {
	margin-top: 2%;
	padding: 16px;
	background-color: white;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
}
.container {
	margin-top: 0%;
	padding: 16px;
	background-color: white;
	margin-left: 10%;
	margin-right: 10%;
	width: 80%;
}
.hrStyles {	
	border-top: 2px solid #6cb6ff;
	width: 100%;
}
.hrStyles:hover {
	border-top: 2px solid #9999ff;
}
.search_form input[type=text] {
			float: right;
	 	 	padding: 10px 15px;
  			background-color: #d7d7ff;
  			text-color: black;
  			border: none;
  			width: 70%;
  			margin-left: 3%;
  			margin-right: 0%;
  			margin-top: 0px;
}
.search_align {
			float: left;
			margin-left: 0%;
			margin-right: 0%;
		}
		.search_icon {
			float: left;
			margin-left: 0%;
  			margin-right: 0%;
  			text-decoration: none;
  			color: blue;
		}
#submit {
	background-color: blue;
	color: white;
	padding: 16px 20px;
	border: none;
}
#submit:hover {
	background-color: #d5eaff;
}
table {
	background-color: white;
	width: 100%;
}
table, th, td {
  	border: 1px solid black;
  	border-collapse: collapse;
}
th, td {
 	padding: 10px;
 	text-align: center;
}
th {
	background-color: #00009b;
	color: white;
	font-size: 24px;
	font-style: italic;
}
th:hover {
	background-color: #6cb6ff;
	color: white;
	font-size: 28px;
	font-style: italic;
}
td {
	font-size: 22px;
	font-family: "Times New Roman", Times, serif;
	font-style: italic;
}
td:hover {
	font-size: 26px;
	font-style: italic;
}
.search_form input[type=text] {
	float: right;
	padding: 10px 15px;
  	background-color: #d7d7ff;
  	text-color: black;
  	border: none;
  	width: 70%;
  	margin-left: 3%;
  	margin-right: 0%;
  	margin-top: 0px;
}
.search_align {
	float: left;
	margin-left: 0%;
	margin-right: 0%;
}
.search_icon {
	float: left;
	margin-left: 0%;
  	margin-right: 0%;
}
input[type=text]:focus {
	background-color: #d5eaff;
	outline: none;
}
.btn_edit {
	padding: 10px 30px;
	border: blue;
	outline: blue;
	background-color: #9999ff;
	color: white;
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	font-style: italic;
}
.btn_edit:hover {
	background-color: #6cb6ff;
	font-size: 24px;
}
.btn_delete {
	padding: 10px 30px;
	border: black;
	outline: black;
	background-color: red;
	color: white;
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	font-style: italic;
}
.btn_delete:hover {
	background-color: #ffb5da;
	font-size: 24px;
}

</style>
</head>
<body>

	<%
		if (session.getAttribute("userEmail") == null || 
			session.getAttribute("userType").equals("customer") || 
			session.getAttribute("userType").equals("supplier")) {
			
				response.sendRedirect("Login.jsp");
		}
	%>

	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<div class="heading_list">
	
	<h2>Product Search Results</h2>
	<hr class="hrStyles">
		
	<form class="search_form" action="ProductGetById_AdminServlet" method="post">
		
		<div class="search_align">
			<input type="text" name="id" placeholder="Search Product By ID">
			<a href="#" class="search_icon"><i class="w3-xxlarge fa fa-search"></i></a>
		</div>
			
	</form><br><br>
	
	</div>
	
	<% 
		Product p1 = (Product) request.getAttribute("p1");
		String ID = p1.getProductID();
	%>
	
		<div class="container">
	
 			<table border="1">
				<tr><th>Product ID</th>		<th>Product Name</th>
					<th>Category</th>		<th>Qty</th>
					<th>Size</th>			<th>Price</th>
					<th>Re-Order Level</th>	<th>Edit</th>
					<th>Delete</th>
				</tr>
	
				<tr>  
					<td> <%=p1.getProductID() %></td>
					<td> <%=p1.getProductName() %></td>
					<td> <%=p1.getProductCategory() %></td>
					<td> <%=p1.getProductQty() %></td>
					<td> <%=p1.getProductSize() %></td>
					<td> <%=p1.getProductPrice() %></td>
					<td> <%=p1.getProductReOrderLevel() %></td>
				
					<td><a href="ProductGetById_AdminServlet?id=<%= p1.getProductID() %>">
						<button class="btn_edit">Edit</button></a></td>
					
					<td><a href="ProductDelete_AdminServlet?id=<%= p1.getProductID() %>">
						<button class="btn_delete">Delete</button></a></td>
				</tr>
			
			</table>
		</div>
		<br><br>
	
</body>
</html>