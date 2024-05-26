<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
session.setAttribute("id1",id);
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String gender = request.getParameter("gender");
String uname = request.getParameter("uname");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String mobile = request.getParameter("mobile");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hackathon", "mahe");  
	 System.out.println("Connection Established");

	 PreparedStatement ps = con.prepareStatement("select * from stureg where username=? or emailid=? or mobileno=?");
	 ps.setString(1, uname);
	 ps.setString(2, email);
	 ps.setString(3, mobile);
	 
	 ResultSet rs = ps.executeQuery();
	 
	 if(rs.next())
	 {
		 %>
		
 <h3 align=center>Email Id / Username / Mobileno already available</h3><br>
	  
		
			<%  
	 }
	 else
	 {
		 PreparedStatement pstmt = con.prepareStatement("insert into stureg values(?,?,?,?,?,?,?,?)");
		 
		 pstmt.setString(1, id);
		 pstmt.setString(2, fname);
		 pstmt.setString(3,lname);
		 pstmt.setString(4, gender);
		 pstmt.setString(5, uname);
		 pstmt.setString(6, email);
		 pstmt.setString(7, pwd);
		 pstmt.setString(8, mobile);
		 
		 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
		
 <h3 align=center>User Registration Successful</h3><br>
 <a href="S09_01LOGIN.jsp">LOGIN HERE</a>
			
			<% 
		 }
		 else
		 {
				%>
 <h3 align="center">User Registration UnSuccessful</h3><br>
  <a href="S09_01REG.html">REGISTER AGAIN</a>

			
				<% 
		 }
		
	 }
	 
	 
	 
	 
}
catch(Exception e)
{
	%>
 <h3 align="center">User Registration UnSuccessful</h3><br>
 <a href="S09_01REG.html">REGISTER AGAIN</a>
<%	
	out.println(e);

}

%>