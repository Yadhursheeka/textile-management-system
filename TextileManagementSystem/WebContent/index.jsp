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
<title>Home Page</title>
<style>
body {
	background: url("images/bg1.jpg");     
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
	}
.slideshow-container {
  max-width: 1200px;
  max-height: 1500px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

h2 {
  font-color: #052B6A;
  font-size: 30px;
	}
h2:hover {
	font-size: 32px;
}
.category_headings {
	color: #0000b0;
	font-style: italic;
}
.category_headings:hover {
	color: #ff2f97;
	font-weight: bold;
	text-decoration: underline;	
}
/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

.row {
  display: flex;
  margin-left: 150px;
}


.column {
  flex: 30%;
  padding: 10px;
}
.flip-box {
  background-color: transparent;
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-box-front {
  background-color: #bbb;
  color: black;
}

/* Style the back side */
.flip-box-back {
  background-color: #e6e6ff;
  color: black;
  transform: rotateY(180deg);
}

/* Style the back side */
.flip-card-back {
  background-color: #d5eaff;
  color: black;
  transform: rotateY(180deg);
}

a {
	text-decoration: none;
}
</style>
</head>
<body>

	<jsp:include page="HomeHeader.jsp"></jsp:include>
		
		<br><br>

		<div class="slideshow-container">
			
			<div class="mySlides fade">
  				<img src="images/slideshow_images/s1.png" style="width:100%; height:500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s2.jpg" style="width:100%; height:500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s3.png" style="width:100%; height: 500px">
			</div>

			<div class="mySlides fade">
				<img src="images/slideshow_images/s4.jpg" style="width:100%; height: 500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s5.jpg" style="width:100%; height: 500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s6.jpg" style="width:100%; height: 500px">
			</div>
			
			<div class="mySlides fade">
  				<img src="images/slideshow_images/s7.jpg" style="width:100%; height: 500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s8.jpg" style="width:100%; height: 500px">
			</div>

			<div class="mySlides fade">
  				<img src="images/slideshow_images/s9.jpg" style="width:100%; height: 500px">
			</div>
			
			<div class="mySlides fade">
  				<img src="images/slideshow_images/s10.jpg" style="width:100%; height: 500px">
			</div>

			<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
			<a class="next" onclick="plusSlides(1)">&#10095;</a>

		</div>
		<br>

			<div style="text-align:center">
  			<span class="dot" onclick="currentSlide(1)"></span> 
  			<span class="dot" onclick="currentSlide(2)"></span> 
  			<span class="dot" onclick="currentSlide(3)"></span> 
  			<span class="dot" onclick="currentSlide(4)"></span> 
  			<span class="dot" onclick="currentSlide(5)"></span>
  			<span class="dot" onclick="currentSlide(6)"></span>
  			<span class="dot" onclick="currentSlide(7)"></span>
  			<span class="dot" onclick="currentSlide(8)"></span>
  			<span class="dot" onclick="currentSlide(9)"></span> 
  			<span class="dot" onclick="currentSlide(9)"></span> 
		</div>
		
		<br>
		<hr>

	<div class="row">
 			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/men.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/men2.jpg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="CategoryMen.jsp" class="category_headings">Men's Wear</a></h2>
  			</div>
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/boys.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/boys2.jpg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="#" class="category_headings">Boys' Wear</a></h2>
  			</div>
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/babies1.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/babies2.jpg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="CategoryBabies.jsp" class="category_headings">Babies' Wear</a></h2>
  			</div>
  		</div>
  		
  		<br><br>
  		
  		<!-- second row of flip image -->
  		
  			<div class="row">
 			 <div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/women2.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/women.jpg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="CategoryWomen.jsp" class="category_headings">Women's Wear</a></h2>
  			</div>
  			
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/girls2.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/girls1.jpeg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="#" class="category_headings">Girls' Wear</a></h2>
  			</div>
  			
  			
  			<div class="column">
   			<div class="flip-box">
  			<div class="flip-box-inner">
    			<div class="flip-box-front">
     			<img src="images/category/essentials1.jpg" style="width:300px;height:200px">
    			</div>
    			<div class="flip-box-back">
      			<img src="images/category/essentials2.jpeg" style="width:300px;height:200px">
    			</div>
  			</div>
			</div>
 			<h2><a href="#" class="category_headings">Essentials</a></h2>
  			</div>
  		</div>
  		
  		<hr>
		

<!-- Script for slide show -->
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

		<jsp:include page="HomeFooter.jsp"></jsp:include>
		
</body>
</html>