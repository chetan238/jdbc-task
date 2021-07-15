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
String s=request.getParameter("uid");
String s1=request.getParameter("opas");
String s2=request.getParameter("npas");
String s3=request.getParameter("cpas");
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
Statement sc=cn.createStatement();
ResultSet rs=sc.executeQuery("select pswd from data where user='"+s+"'");
if(rs.next())
{
  String pswd=rs.getString("pswd");
  System.out.println(s1);
  System.out.println(pswd);
  System.out.println(s2);
  System.out.println(s3);
	 if(s1.equals(pswd)&&s2.equals(s3))
  {   System.out.println("hello"); 
	 sc.executeUpdate("update data SET pswd='"+s2+"' WHERE user='"+s+"'");
	 response.sendRedirect("welcome2.jsp");
  }
  
	 else
 	{    session.setAttribute("error","enter valid details....!!!!");
		 response.sendRedirect("password.jsp");
 	}
}
  

rs.close();
sc.close();
cn.close();

%>
</body>
</html>