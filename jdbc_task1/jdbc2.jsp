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
String fn=request.getParameter("fname1");
String ln=request.getParameter("lname2");
String en=request.getParameter("ename3");
String gn=request.getParameter("gender");
out.println(fn);
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
Statement st=cn.createStatement();
st.executeUpdate("insert into register(fname,lname,email,gender) values('"+fn+"','"+ln+"','"+en+"','"+gn+"')");
st.close();
cn.close();
%>
</body>
</html>