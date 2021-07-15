<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
 String us=request.getParameter("uname");
 String ps=request.getParameter("pname");
 Class.forName("com.mysql.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
 Statement sc=cn.createStatement();
 ResultSet rs=sc.executeQuery("select user,pswd from data where user='"+us+"' and pswd='"+ps+"'");
 if(rs.next())
 {   
		 response.sendRedirect("welcome1.jsp");
	 }
	 else
	 {   session.setAttribute("error","enter valid details....!!!!");
		 response.sendRedirect("login.jsp");
		 
	 }   
	 
  
 rs.close();
 sc.close();
 cn.close();
 
 %>
</body>
</html>