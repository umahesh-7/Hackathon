<%@ page import="java.sql.*" %>
<%
String fname = (String)session.getAttribute("fname");
String email = (String)session.getAttribute("email");
String pwd = (String)session.getAttribute("pwd");
if(fname==null || email==null || pwd==null)
{
    response.sendRedirect("membersessiontimeout.html");
}
%>
<%
String ename = request.getParameter("ename");
String date = request.getParameter("date");
String place = request.getParameter("place");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver Classes Loaded");  
	 Connection con = null;
	 con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hackathon", "mahe");  
	 System.out.println("Connection Established");
	
	 String user=request.getParameter("name");
	 //String id=(String) request.getAttribute("id1");
	  
	// System.out.println("id");
		 PreparedStatement pstmt = con.prepareStatement("insert into techevents values(?,?,?,?)");
		 
		 pstmt.setString(1, email);
		 pstmt.setString(2, ename);
		 pstmt.setString(3, date);
		 pstmt.setString(4, place);
		 
		 	 
		 int i = pstmt.executeUpdate();
		 
		 if(i>0)
		 {
			%>
 <h3 align=center>User Registration Successful</h3><br>
 <%
 if(ename=="technical" || ename=="Technical"){
	 %>
 <a href="S09_01QUESTIONS1.html">Test Your Performance</a>
		<%	}
			else if(ename=="Creative" || ename=="creative"){ 
			%>
 <a href="S09_01QUESTIONS2.html">Test Your Performance</a>
			<% 
			}
			else if(ename=="Extra" || ename=="extra"){
			%>
		
 <a href="S09_01QUESTIONS3.html">Test Your Performance</a>
			
		<%	
		 }
		 else 
		 {
				%>
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