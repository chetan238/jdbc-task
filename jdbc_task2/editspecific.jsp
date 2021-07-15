<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int j=(Integer)(session.getAttribute("id1"));
System.out.println(j);
String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("uname");
String s4=request.getParameter("pname");
String s5=request.getParameter("ename");
String s6=request.getParameter("c");
String s7=request.getParameter("gender");
String arr1[]=request.getParameterValues("h");
//List ls=new ArrayList();
 for(int i=0;i<arr1.length;i++)
 {
	// ls.add(arr1[i]);
	 System.out.println(arr1[i]);
 }
String s10="cricket";
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
Statement st=cn.createStatement();
//st.executeUpdate("UPDATE formdetails SET FirstName = '"+s1+"' , LastName = '"+s2+"' , User = '"+s3+"' , Pswd = '"+s4+"' , Email = '"+s5+"' , Country='"+s6+"',Gender='"+s7+"',Hobbies='"+ls+"' WHERE id="+j);
response.sendRedirect("show.jsp");
%>
</body>
</html>