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
<title>Contact Us</title>
<style>
/*
 * ITP 2020 Textile Management System
 * 
 * @author V. Yahdhursheika - IT19186948
 */
 
body {
	background: url("images/bg1.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}
h2 {
	color: #00009b;
	text-align: center;
	font-size: 34px;
	font-style: italic;
	margin-top: 0%;
}

h2:hover {
	font-size: 36px;
	color: #6cb6ff;
}

.hrStyles {
	border-top: 2px solid #6cb6ff;
	width: 55%;
}

.hrStyles:hover {
	border-top: 2px solid #9999ff;
}
.contact_container {
	padding: 16px;
	background-color: white;
	margin-left: 25%;
	margin-right: 25%;
	margin-top: 5%;
	}
label {
	font-style: italic;
	font-size: 20px;
	font-weight: bold;
	color: #00009b;
}		
input[type=text], input[type=password], input[type=number], input[type=email], textarea
	{
		width: 90%;
		font-family: Arial, Helevetica, sans-serif;
		padding: 15px;
		display: inline-block;
		border: none;
		background: #e6e6ff;
	}
.inputHidden {
		width: 90%;
		font-family: Arial, Helevetica, sans-serif;
		padding: 15px;
		display: inline-block;
		border: none;
		background: #e6e6ff;
		color: red;
	}
input[type=text]:focus, input[type=email]:focus, textarea:focus {
		background-color: #d5eaff;
		outline: none;
	}
input[type=text]:hover, input[type=email]:hover, textarea:hover {
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
	padding: 20px 40px;
	border: none;
	outline: blue;
	font-size: 20px;
	font-style: italic;
	font-family: "Times New Roman", Times, serif;
	}
#submit:hover {
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

	
	<form action=Contact_AddServlet method="post">

	<div class="contact_container">
	
	<h2>Contact Us</h2>
	<hr class="hrStyles">
	<br><br>
	
	<label>Enter Name</label><br><br>
	<input type="text" name="name" placeholder="Enter Name" required><br><br><br>
	
	<label>Enter Email</label><br><br>
	<input type="email" name="email" placeholder="Enter Email" required><br><br><br>
	
	<label>Enter Subject</label><br><br>
	<input type="text" name="subject" placeholder="Enter Subject"><br><br><br>
	
	<label>Type Your Message</label><br><br>
	<textarea name="message" class="txt" rows="5" cols="95" required></textarea>
	<br><br><br>
	
	<input type="submit" value="Submit Response" id="submit">
	<input type="reset" value="Reset Form" id="reset">
		
	</div>
	</form>
	<br><br><br><br>
	
	<jsp:include page="HomeFooter.jsp"></jsp:include>
	
</body>
</html>