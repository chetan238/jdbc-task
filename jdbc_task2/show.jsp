<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=1px>
	<tr>
		<td>	
		  <b>Sr.No</b>
		</td>
		<td>
		  <b>First Name</b>
		</td>
		<td>
		  <b>Last Name</b>
		</td>
		<td>
		  <b>User</b>
		</td>
		<td>
		  <b>Pswd</b>
		</td>
		<td>
		  <b>Email</b>
		</td>
		<td>
		  <b>Country</b>
		</td>
		<td>
		  <b>Gender</b>
		</td>
		<td>
		  <b>Hobbies</b>
		</td>
		<td style="width:100px">
		  <b>Action</b>
		</td>
		
	</tr>

<%
 Class.forName("com.mysql.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
 Statement st=cn.createStatement();
 ResultSet rs=st.executeQuery("select * from formdetails");
 while(rs.next())
 {
	int i=rs.getInt("id");
	String c1=rs.getString("FirstName");
	String c2=rs.getString("LastName");
	String c3=rs.getString("User");
	String c4=rs.getString("Pswd");
	String c5=rs.getString("Email");
	String c6=rs.getString("Country");
	String c7=rs.getString("Gender");
	String c8=rs.getString("Hobbies"); 
%>
	<tr>
	<td><b><%out.println(i);%></b></td>
	 <td><b><%out.println(c1);%></b></td>
	 <td><b><%out.println(c2);%></b></td>
	 <td><b><%out.println(c3);%></b></td>
	 <td><b><%out.println(c4);%></b></td>
	 <td><b><%out.println(c5);%></b></td>
	 <td><b><%out.println(c6);%></b></td>
	 <td><b><%out.println(c7);%></b></td>
	 <td><b><%out.println(c8);%></b></td>
	 <td><a href="delete.jsp?id=<%=i%>">delete.</a>
	  <a href="edit.jsp?id1=<%=i%>">edit.</a>
	  	</td>
	</tr>
	<%
	
 }
  %>
  data is entered to the databasde !!!!
  <a href="show.jsp">click here to show entered data </a>
  </table>
</body>
</html>