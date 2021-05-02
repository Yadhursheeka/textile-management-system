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
<meta charset="ISO-8859-1">
<title>Edit Product</title>
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

.container {
	margin-top: 5%;
	padding: 16px;
	background-color: white;
	margin-left: 25%;
	margin-right: 25%;
}

.hrStyles {
	border-top: 2px solid #6cb6ff;
	width: 100%;
}

.hrStyles:hover {
	border-top: 2px solid #9999ff;
}

label {
	font-style: italic;
	font-size: 20px;
	font-weight: bold;
	color: #00009b;
}
label:hover {
	font-size: 24px;
	color: #9999ff;
}
input[type=text], input[type=password], input[type=number], input[type=email]
	{
	width: 90%;
	font-family: Arial, Helevetica, sans-serif;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #e6e6ff;
}

.p1 {
	width: 90%;
	font-family: Arial, Helevetica, sans-serif;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #e6e6ff;
	color: red;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus
	{
	background-color: #d5eaff;
	outline: none;
}

input[type=text]:hover, input[type=password]:hover, input[type=number]:hover
	{
	background-color: #d5eaff;
	outline: none;
}

.select {
	width: 90%;
	font-family: Arial, Helevetica, sans-serif;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #e6e6ff;
}
.select:hover {
	background-color: #d5eaff;
	outline: none;
}
.select:focus {
	background-color: #d5eaff;
	outline: none;
}

#submit {
	background-color: #00009b;
	color: white;
	padding: 20px 75px;
	border: none;
	outline: #00009b;
	font-size: 20px;
	font-style: italic;
	font-family: "Times New Roman", Times, serif;
}

#submit:hover {
	background-color: #9999ff;
	padding: 20px 85px;
	font-size: 24px;
	font-style: italic;
	font-weight: bold;
}

#reset {
	background-color: red;
	color: white;
	padding: 20px 70px;
	border: none;
	outline: red;
	margin-left: 10%;
	font-size: 20px;
	font-style: italic;
	font-family: "Times New Roman", Times, serif;
}

#reset:hover {
	background-color: #f892e6;
	font-size: 24px;
	font-style: italic;
	font-weight: bold;
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
		
	
	<% 
		Product p1 = (Product) request.getAttribute("p1");
		String ID = p1.getProductID();
	%>
	<div class="container">
	
	<h2>Update Product</h2>
	<hr class="hrStyles">
	<br>
	
	<form action="ProductEdit_AdminServlet?id=<%= ID %>" method="post">
		
		<label>Product ID</label><br><br>
		<input type="text" name="updatedID" value="<%= p1.getProductID() %>"><br><br><br>
		
		<label>Change Product Name</label><br><br>
		<input type="text" name="name" value="<%= p1.getProductName() %>"><br><br><br>
		
		<label>Change Product Category</label><br><br>
		<select class="select" name="category">
				<option value="<%= p1.getProductCategory() %>" selected><%= p1.getProductCategory() %></option>
				<option value="Mens' wear">Men's wear</option>
				<option value="Women's wear">Women's wear</option>
				<option value="Boys' wear">Boys' wear</option>
				<option value="Girls' wear">Girls' wear</option>
				<option value="Babies' wear">Babies' wear</option>
				<option value="Essentials">Essentials</option>
		</select><br><br><br>
		
		<label>Change Product Quantity</label><br><br>
		<input type="number" name="qty" value="<%= p1.getProductQty() %>"><br><br><br>
		
		<label>Change Product Size</label><br><br>
		<input type="text" name="size" value="<%= p1.getProductSize() %>"><br><br><br>
		
		<label>Change Product Price</label><br><br>
		<input type="number" name="price" min="0" step="0.01" value="<%= p1.getProductPrice() %>"><br><br><br>
		
		<label>Change Product Re-Order Level</label><br><br>
		<input type="number" name="reOrderLevel" value="<%= p1.getProductReOrderLevel() %>"><br><br><br>
		
		
		<input type="submit" value="Edit Product" id="submit">
		<input type="reset" value="Reset Form" id="reset">
	
	</form>
	</div>
	<br><br><br>
	
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	
</body>
</html>