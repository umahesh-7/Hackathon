<!DOCTYPE html>
<html class="no-js" lang="en-US">
<head>

		<title>STUDENT PERFORMANC ANALYSIS</title>
		<!--<link rel="stylesheet" type="text/css" href="events.css">-->
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}

	
<script src="https://site.ieee.org/sb-mepco-wie/wp-content/themes/mh-magazine-lite/js/css3-mediaqueries.js"></script>
<![endif]-->
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
		<style type="text/css" id="custom-background-css">
body.custom-background { background-color: #0c0004; background-image: url("https://site.ieee.org/sb-mepco-wie/files/2016/07/giphy.gif"); background-position: left top; background-size: auto; background-repeat: repeat; background-attachment: scroll; }
</style>
</head>
<body id="mh-mobile" class="page-template-default page page-id-2647 page-child parent-pageid-374 custom-background mh-left-sb" itemscope="itemscope" itemtype="http://schema.org/WebPage">
<div class="mh-container mh-container-outer">
<div class="mh-header-mobile-nav mh-clearfix"></div>
<header class="mh-header" itemscope="itemscope" itemtype="http://schema.org/WPHeader">
	<div class="mh-container mh-container-inner mh-row mh-clearfix">
		<div class="mh-custom-header mh-clearfix">
	</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <style>
body {font-family: Arial, Helvetica, sans-serif;}


}

 }

.navbar {
    width: 100%;
    background-color:red;
    overflow: auto;
}

.navbar a {
    float:left;
    padding: 12px;
    color: white;
    text-decoration: none;
    font-size: 17px;
}

.navbar a:hover {
    background-color: #000;
}

.active {
    background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
    .navbar a {
        float: none;
        display: block;
    }
}
.navbar {
  overflow: hidden;
  background-color: blue;

table,th,td{
border: 1px solid Red

}
</style>
	<body>
<p style="text-align:center; font-weight: bold" ><font color="white"> <h1><center> STUDENT PERFORMANCE ANALYSIS </h1></center> </font><br>
</p>

<div  class="navbar">
                <a href="Home.html">HOME</a>
                <a href="S09_01ADMINLOGIN">ADMIN</a>
                <a href="eventmanager.html">EVENT MANAGER</a>
                <a href="S09_01LOGIN.jsp">STUDENT LOGIN</a>
                <a href="S09_01REG.html">STUDENT REGISTRATION</a>
                <a href="Home.html">ABOUT EVENT</a>
</div>
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
<br></br>                      
</section>



  <h3 align="center"><u>Member Login</u></h3><br>
  <form method="post" action="S09_01VALID.jsp">
      
      <table align="center" style=width:"50%" height="25%" bgcolor="red">
      
         
          <tr>
              <td><b>Enter Email Address</b></td>
              <td><input type="email" name="email" placeholder="Enter Email Address" required></td>
          </tr>
           <tr>
              <td><b>Enter Password</b></td>
              <td><input type="password" name="pwd" placeholder="Enter Password" required></td>
          </tr>
            <tr>
              <td align="center"><input type="submit" value="Login"></td>
              <td align="center"><input type="reset" value="Clear"></td>
          </tr>
      </table>
      
  </form>
   <div class="footer">
  <p>copy rights reserved &copy; Maheshaa</p>
</div>
    </body>
</html>