
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
String sn1=request.getParameter("fname");
String sn2=request.getParameter("lname");
String sn3=request.getParameter("uname");
String sn4=request.getParameter("pname");
String sn5=request.getParameter("ename");
String sn6=request.getParameter("c");
String sn7=request.getParameter("gender");
String arr1[]=request.getParameterValues("h");
//now we take all the array element into the list...syntax of list is as below for hobby.
//List ls=new ArrayList();
//ls.add("chetan,mehul");

 Class.forName("com.mysql.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
 Statement st=cn.createStatement();
 if(arr1!=null)
 {   List ls=new ArrayList();
     for(int i=0;i<arr1.length;i++)
   {
     ls.add(arr1[i]);	
   }
	 st.executeUpdate("insert into formdetails(FirstName,LastName,User,Pswd,Email,Country,Gender,Hobbies) values('"+sn1+"','"+sn2+"','"+sn3+"','"+sn4+"','"+sn5+"','"+sn6+"','"+sn7+"','"+ls+"')");
 }
 else
 {
	 st.executeUpdate("insert into formdetails(FirstName,LastName,User,Pswd,Email,Country,Gender) values('"+sn1+"','"+sn2+"','"+sn3+"','"+sn4+"','"+sn5+"','"+sn6+"','"+sn7+"')");
 }
 

%>
data is entered to the databasde !!!!
  <a href="show.jsp">click here to show entered data </a>
</body>
</html>