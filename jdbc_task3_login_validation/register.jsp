<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="data.jsp">
First Name:<input type="text" name="fname"><br><br>
Last Name :<input type="text" name="lname"><br><br>
User ID :<input type="text" name="uname"><br><br>
Pswd :<input type="text" name="pname"><br><br>
<input type="submit"><br>
<h4>Have an Account ?</h4>
<a href="login.jsp">login</a>
</form>
</body>
</html>