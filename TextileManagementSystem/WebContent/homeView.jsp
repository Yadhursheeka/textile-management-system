<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
html, body {
    height: 100%;
}
body {
	background: url("images/bg1.jpg"); 
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
    margin:0px;
    padding: 0px;
}
a { 
	text-decoration: none;
}
.order_container {
	background-color: white;
	margin-top: 5%;
	margin-left: 15%;
	width: 75%;
}
.input {
	width: 350px;
}

.move {
	margin-top: 5%;
	margin-left: 550px;
}

p {
	color: black;
}

label {
	color: black;
}
hr{
    width:400px;
      margin: 0px;
}
</style>
<link rel = "stylesheet" type = "text/css" href = "styles/style2.css" />
<title>Order</title>
</head>
<body>

	<div class="wrap">

	<jsp:include page="HomeHeader_AfterLogin.jsp"></jsp:include>

	<form action="AddOrderServlet" method="post">

	
		<div class="order_container">

				<h1>Order</h1>
			
				<p>Placing an Order.</p>
				<hr>

				<div class=input>
					<label for="product">Select product </label><br>
						<input type="text"name="product" placeholder="Shirt.." required /><br> 
				
					<br> <label for="quantity">Enter Quantity</label><br> 
					<input type="number" name="quantity"  required /><br><br>
					
					<br> <label for="size">Enter Size</label><br> 
					<input type="text" name="size"  placeholder="S / M / L / XL"  required /><br><br>
					
					<div class="move">
					
					 <br><br><label for="subTotal">SubTotal</label><br>
					  <input type="number" name="subTotal"   required /><br><br><br>
					  
					 <label for="discount">Discount</label>
					<p>0.00</p><br><br><br>
					<label for="total">Total</label><br>
					 <input type="number" name="total"  required /> <br>
				</div>
                    <br><br><br><br><br><br><br>
                   
                  

				<div style="margin-left:650px;margin-top:-98px;">
					<input type="submit" id="outer" value="Confirm order"
						class="add-button" /> 
				     

				</div>
				</div>
				<br>
				
		
	</form><br>
	 <div style="margin-left:-5px;margin-top:-90px;">
	<form method="POST" action="ListOrderServlet">
		<input type="submit" id="outer" value="Show Order history"
			class="list-button" />

	</form>
	</div>
	</div>
</div>
<br><br>
	<jsp:include page="HomeFooter.jsp"></jsp:include>
	
</body>
</html>