<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<style>
.footer_container {
	background-color: #052B6A;
}
#lab_social_icon_footer {
  padding: 20px 0;
  background-color: #052B6A;
  text-color: white;
}
#lab_social_icon_footer a {
  color: #fff;
}
#lab_social_icon_footer .social:hover {
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -o-transform: scale(1.1);
}
#lab_social_icon_footer .social {
  -webkit-transform: scale(0.8);
  /* Browser Variations: */
  
  -moz-transform: scale(0.8);
  -o-transform: scale(0.8);
  -webkit-transition-duration: 0.5s;
  -moz-transition-duration: 0.5s;
  -o-transition-duration: 0.5s;
}
/*
    Multicoloured Hover Variations
*/
#lab_social_icon_footer #social-fb:hover {
  color: #3B5998;
}
#lab_social_icon_footer #social-tw:hover {
  color: #4099FF;
}
#lab_social_icon_footer #social-gp:hover {
  color: #d34836;
}
#lab_social_icon_footer #social-em:hover {
  color: #f39c12;
}
.links a {
	color: white;
	font-size: 20px;
	font-style: italic;	
}
.links a:hover {
	text-color: #d5eaff;
	font-size: 30px;
	font-weight: bold;	
}
.icons-block {
	margin-left: 40%;
}
</style>
</head>
<body>

	<section id="lab_social_icon_footer">
<div class="footer_container">
	            
	            <div class="links">
	            <a href="ContactUs.jsp">Contact Us | </a>
  				<a href="#">About Us</a>
  				</div>
  				<br>
  				
        <div class="center-block"  style="align: center; color:white">
        	<div class="icons-block">
                <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:#"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
	         </div>  
	         <br><br><br><br><br><br>
    	</div>
     	
</div>
</section>

</body>
</html>