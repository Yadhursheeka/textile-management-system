<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
	<style>
	body {
		background: url("images/bg1.jpg");
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: 100% 100%;
	}
	
	h1 {
		color: #00009b;
		text-align: center;
		font-size: 30px;
	}
	
	.container {
		padding: 16px;
		background-color: white;
		margin-left: 25%;
		margin-right: 25%;
	}
	
	hr {
		width: 55%;
	}
	
	.hrStyles {
		width: 55%;
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
	
	#submit {
		background-color: blue;
		color: white;
		padding: 16px 20px;
		border: none;
	}
	
	#submit:hover {
		background-color: pink;
	}
	
	#reset {
		background-color: red;
		color: white;
		padding: 16px 20px;
		border: none;
	}
	
	#reset:hover {
		background-color: pink;
	}
	</style>
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
	<%-- <%
		}
		else if(session.getAttribute("userType").equals("admin")) {
			
	%>
			
		<jsp:include page="AdminHeader.jsp"></jsp:include> --%>
	<%
		}
		else {
			
	%>
		<jsp:include page="HomeHeader.jsp"></jsp:include>
	<%
		}
	%>

	<h1>Register</h1>
	<hr class="hrStyles">

	<div class="container">

		<form action="register" method="post">

			<label>First Name</label>
			<br>
			<br>
			<input type="text" name="firstName" placeholder="First Name"
				required />
			
			<br>
			<br>
			<br>
			
			<label>Last Name</label>
			<br>
			<br>
			<input type="text" name="lastName"
				placeholder="Last Name" required />
			
			<br>
			<br>
			<br>
			
			<label>Email</label>
			<br>
			<br>
			<input type="email" name="email"
				placeholder="Email" required />
			
			<br>
			<br>
			<br>
			
			<label>Password</label>
			<br>
			<br>
			<input type="password" name="password"
				placeholder="Password" required />
			
			<br>
			<br>
			<br>
			
			<label>Address</label>
			<br>
			<br>
			<input type="text" name="address"
				placeholder="Address" />
			
			<br>
			<br>
			<br>
			
			<label>User Type</label>
			<br>
			<br>
			<select class="select" name="userType" required>
				<option value="0">Customer</option>
				<option value="1">Supplier</option>
			</select>
			
			<br>
			<br>
			<br>
			
			<input type="submit" value="Register" id="submit">
			<input type="reset" value="Reset Form" id="reset"> 
			
			<br>
			<br>
		</form>
	</div>

	<jsp:include page="HomeFooter.jsp"></jsp:include>
	
</body>
</html>