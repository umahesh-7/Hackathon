<%@ page import="java.sql.*,javax.servlet.*" %>
<%

String email = request.getParameter("email");
String pwd = request.getParameter("pwd");

try
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hackathon", "mahe");  
	 System.out.println("Connection Established");
	  
	  PreparedStatement pstmt = con.prepareStatement("select * from stureg where emailid=? and password=?");
	  pstmt.setString(1,email);
	  pstmt.setString(2,pwd);
	  ResultSet rs = pstmt.executeQuery();
	  if(rs.next())
	  {
		 
		  session.setAttribute("fname", rs.getString("studentFirstname"));
		 session.setAttribute("email", email);
		 session.setAttribute("pwd", pwd);
		 session.setMaxInactiveInterval(100);
		 response.sendRedirect("S09_01EVENT.jsp");
	  }
	  else
	  {
		  %>
 	<h3 align="center">Login Failed</h3><br>
	<a href="S09_01LOGIN.html">LOGIN AGAIN</a>
			<% 
	  }
}
catch(Exception e)
{
	out.println(e);
}



%>