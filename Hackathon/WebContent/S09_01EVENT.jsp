
<%
String fname = (String)session.getAttribute("fname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || email==null || pwd==null)
{
    response.sendRedirect("membersessiontimeout.html");
}
%>
<html>
	<head>
		<title>EVENTS SECTION</title>
		<!--<link rel="stylesheet" type="text/css" href="events.css">-->
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto+Condensed&display=swap')
body
{
	margin:0;
	padding:0;
	font-family: 'Roboto Condensed', sans-serif;
}
section
{
	width:100%;
	height:100vh;
	background:url(images/2.jpg);
	background-size:cover;
}
section .leftbox
{
	width:50%;
	height:100%;
	float:left;
	padding:50px;
	box-sizing:border-box;
}
section .leftbox .content
{
	color:#fff;
	background:rgba(0,0,0,.5);
	padding:40px;
	transition:.5s;
}
section .leftbox .content:hover
{
	background:#F61104;
}
section .leftbox .content h1
{
	margin:0;
	padding:0;
	font-size:50px;
}
section .leftbox .content p
{
	margin:10px 0 0;
	padding:0;
}
section .events
{
	position:relative;
	width:50%;
	height:100%;
	background:rgba(0,0,0,.5);
	float:right; 
	box-sizing:border-box;
}
section .events ul
{
	position:absolute;
	top:50%;
	transform:translateY(-50%);
	margin:0;
	padding:40px;
	box-sizing:border-box;
}
section .events ul li
{
	list-style:none;
	background:#fff;
	box-sizing:border-box; 
	height:200px;
	margin:15px 0;
}
section .events ul li .time
{
	position:relative;
	padding:20px;
	background:#262626;
	box-sizing:border-box;
	width:30%;
	height:100%;
	float:left;
	text-align:center;
	transition:.5s;
}
section .events ul li:hover .time
{
	background:#F61104;
}
section .events ul li .time h2
{
	position:absolute;
	margin:0%;
	padding:0%;
	top:50%;
	left:50%;
	transform:translate(-50%,-50%);
	color:#fff;
	font-size:60px;
}
section .events ul li .time h2 span
{
	font-size:30px;
}
section .events ul li .details
{
	padding:20px;
	background:#fff;
	box-sizing:border-box;
	width:70%;
	height:100%;
	float:left;
}
section .events ul li .details h3
{
	position:relative;
	margin:0;
	padding:0;
	font-size:22px
}
section .events ul li .details p
{
	position:relative;
	margin:10px 0 0;
	padding:0;
	font-size:16px;
}
section .events ul li .details a
{
	display:inline-block;
	text-decoration:none;
	padding:10px 15px;
	border:2px solid #262626;
	margin-top:15px;
	font-size:18px;
	transition:.5s;
}
section .events ul li .details a:hover
{
	background:#F61104
}
</style>
	</head>
	<body>
		<section>
			<div class="leftbox">
				<div class="content">
				<h1>LIST OF EVENTS </h1>
				<ul>
				<marquee direction="up" height="40%" behavior="slide" >
                <li><a href="1.html">TECHNICAL</a></li>
				<li><a href="2.html">CREATIVE</a></li>
				<li><a href="3.html">EXTRA CIRRICULAR ACTIVITIES</a></li>
				</marquee>
				</ul>
				</div>
			</div>
			<div class="events">
				<ul>
				<li>
					<div class="time">
						<h2>30<br><span>September</span></h2>
					</div>
					<div class="details">
					<h3>TECHNICAL</h3>
					<p>
					Technical events are like c,c++ or Java Programming </p>
					<a href="S09_01TECHNICAL.jsp">Details</a>	
					<div style="clear: both;"></div>
					</div>
				</li>
				<li>
					<div class="time">
						<h2>02<br><span>November</span></h2>
					</div>
					<div class="details">
					<h3>CREATIVE</h3>
					<p>
					Creative events are poster presentation, hand craft, designing</p>
					<a href="S09_01TECHNICAL.jsp">Details</a>
					<div style="clear: both;"></div>
					</div>
				</li>
<li>
					<div class="time">
						<h2>05<br><span>September</span></h2>
					</div>
					<div class="details">
					<h3>EXTRA CIRRICULAR ACTIVITIES</h3>
					<p>
					Extra cirricular activities like nss,culture clubs, narthana club, swara club, academic clubs
</p>
					<a href="S09_01TECHNICAL.jsp">Details</a>
					<div style="clear: both;"></div>
					</div>
				</li>
				</ul>
			</div>
		</section>
	</body>
</html>