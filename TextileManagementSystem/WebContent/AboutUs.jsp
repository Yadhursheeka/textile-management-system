<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html, body {
    height: 100%;
}
body {
    margin:0px;
    padding: 0px;
}

.mySlides{
display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
   height: 50%;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  height:200px;
}
html {
  box-sizing: border-box;
}
*, *:before, *:after {
  box-sizing: inherit;
}
.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
.about-section {
  padding: 70px ;
  text-align: center;
  background-color:#2874A6;
  color: white;
}
.container {
  padding: 0 16px;
}
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}
.title {
  color: white;
}
.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}
.button:hover {
  background-color: #555;
}
p{

font-size:25px;
}

#phara{
  margin: 70px;
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
	<%
		}
		else {
			
	%>
		<jsp:include page="HomeHeader.jsp"></jsp:include>
	<%
		}
	%>
	
	
<br><br>
   <div class="about-section">
  <h1>About Us </h1>
  <p>Who we are and what we do.</p>
  
</div>
<br>
<h2 style="text-align:center">Our Story</h2>
<div id="phara">
<p>Launched in 1999, WORLD OF FASHION offers a wide range of apparel to fit any unique sense of style.
 Our clothing and accessories are carefully curated to provide our customers the latest fashions.
  To keep our customers in style we post new arrivals daily, as well as offer stylist picks to help any indecisive shoppers. 
  WORLD OF FASHION is a fashionista's best place to create the perfect wardrobe.
Beyond helping you look your best, WORLD OF FASHION strives to make every purchase a positive experience. <br><br>
Our top priorities are excellent customer service, exceptionally quick order processing, ultra fast shipping times, and a hassle-free return policy.
 We value your feedback, whether positive or constructive and we are continuously working to improve your experience.
If you are a first-time visitor or long-standing customer, we hope you will be thrilled with every aspect of your WORLD OF FASHION online shopping experience.<br></p>
  </div> <br><br>
  
<div class="w3-content w3-section" >
  <img class="mySlides" src="images/AboutUs/shop.jpg" >
  <img class="mySlides" src="images/AboutUs/team.jpg" >
  <img class="mySlides" src="images/AboutUs/em.jpg" >
</div>

<script>
var myIndex = 0;
carousel();
function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
<br><br><br><br>


	<jsp:include page="HomeFooter.jsp"></jsp:include>
	
</body>
</html>