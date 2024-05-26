
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
<title>Student Performance Analyse</title>
</head>
<body>
<div class="header">
  <a href="Main.html"><img src="user/klulogo3.png" alt="logo" /></a>
  <h1>KLEF</h1>
  <h2>ATTENDANCE MANAGEMENT SYSTEM</h2>
</div>
<body bgcolor="pink">
<div class="navbar">
  <a class="active" href="data.html"><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="adminlogin.html"><i class="fa fa-fw fa-registered"></i> Team Manager</a> 
  <a href="Studentreg.html"><i class="fa fa-fw fa-user"></i> Team Member Registration</a>
   <a href="Studentlogin.html"><i class="fa fa-fw fa-user"></i> Team Member Login</a>
    <a href="contact.html"><i class="fa fa-fw fa-envelope"></i> Contact us</a>
</div>
  <h3 align="center"><u>Student Event Registration</u></h3><br>
  <form method="post" action="S09_01CREATEDB.jsp">
      
      <table align="center" width="50%" height="25%">
     
          <tr>
              <td><b>Enter Event Name</b></td>
              <td><input type="text" name="ename" placeholder="Enter Event Name" required></td>
          </tr>
           <tr>
              <td><b>Enter Event Date</b></td>
              <td><input type="text" name="date" placeholder="Enter Event Date" required></td>
          </tr>
          <tr>
              <td><b>Enter Event place</b></td>
              <td><input type="text" name="place" placeholder="Enter Event Place" required></td>
          </tr>
          
          
          <tr>
              <td align="center"><input type="submit" value="Register"></td>
              <td align="center"><input type="reset" value="Clear"></td>
          </tr>
          
      </table>
      
  </form>
  <div class="footer">
  <p>copy rights reserved &copy; Batch-01</p>
</div>
    </body>
</html>