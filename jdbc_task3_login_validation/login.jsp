<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="verify.jsp">
User ID :<input type="text" name="uname"><br><br>
Pswd :<input type="text" name="pname"><br><br>

<input type="submit"><br><br> 
<b>Forget Password ?</b>
<a href="password.jsp">then click here..</a>

<%
String s=(String)session.getAttribute("error");
if(s!=null)
{
   out.println(s);
   session.invalidate();
}
%>
</form>


</body>
</html>