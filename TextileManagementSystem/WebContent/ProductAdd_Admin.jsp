<!-- 
	ITP 2020 Textile Management System
	
	@author V. Yahdhursheika - IT19186948

 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
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
	padding: 16px;
	background-color: white;
	margin-top: 5%;
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

input[type=text], input[type=password], input[type=number], input[type=email]
	{
	width: 90%;
	font-family: Arial, Helevetica, sans-serif;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #e6e6ff;
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

label {
	font-style: italic;
	font-size: 20px;
	font-weight: bold;
	color: #00009b;
}

.select {
	width: 95%;
	font-family: Arial, Helevetica, sans-serif;
	padding: 15px;
	display: inline-block;
	border: none;
	background: #e6e6ff;
}

.select:focus {
	background-color: #d5eaff;
	outline: none;
}

.select:hover {
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

#demo {
	background-color: blue;
	color: white;
	padding: 20px 50px;
	border: none;
	outline: blue;
	font-size: 20px;
	font-style: italic;
	font-family: "Times New Roman", Times, serif;
}

#demo:hover {
	background-color: #6cb6ff;
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
	
	
	<div class="container">
	
	<h2>Add New Product</h2>
	<hr class="hrStyles">
	<br>
	
	<form action="ProductAdd_AdminServlet" method="post">
	
		<label>Enter Product ID</label><br><br>
		<input type="text" name="id" placeholder="Enter Product ID" required><br><br><br>
		
		<label>Enter Product Name</label><br><br>
		<input type="text" name="name" placeholder="Enter Product Name" required><br><br><br>
		
		<label>Choose Category</label><br><br>
		<select class="select" name="category" required>
				<option value="Mens' wear">Men's wear</option>
				<option value="Women's wear">Women's wear</option>
				<option value="Boys' wear">Boys' wear</option>
				<option value="Girls' wear">Girls' wear</option>
				<option value="Babies' wear">Babies' wear</option>
				<option value="Essentials">Essentials</option>
		</select><br><br><br>
		
		<label>Enter Product Quantity</label><br><br>
		<input type="number" name="qty" placeholder="Enter Quantity" required><br><br><br>
		
		<label>Enter Size</label><br><br>
		<input type="text" name="size" placeholder="Enter Size" required><br><br><br>
		
		<label>Enter Price</label><br><br>
		<input type="number" name="price" placeholder="Enter Price" min="0" step="0.01" required><br><br><br>
		
		<label>Enter Re-Order Level</label><br><br>
		<input type="number" name="reOrderLevel" placeholder="Enter Re-Order Level" required><br><br><br>
		
		<input type="submit" value="Add Product" id="submit">
		<input type="reset" value="Reset Form" id="reset">
	
		<br><br>
	</form>
	
			<form action="Demo_ProductAdd_AdminServlet" method="post">
		
			<input type="submit" value="Demo Add Product" id="demo">
		
		</form>
		</div>
		<br><br><br><br>
		
		<jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>