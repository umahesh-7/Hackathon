
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
<title>Student Login</title>
</head>
<body>
<a href="S09_01EVENT.jsp">EVENTS</a>
</body>
</html>