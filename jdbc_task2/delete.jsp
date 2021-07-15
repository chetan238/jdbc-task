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
 int in=Integer.parseInt(request.getParameter("id"));
//out.println(in);
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
Statement st=cn.createStatement();
st.executeUpdate("DELETE FROM `first`.`formdetails` WHERE `id` ='"+in+"';");
response.sendRedirect("show.jsp");

%>
</body>
</html>