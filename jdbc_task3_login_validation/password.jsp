<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update.jsp">
Enter User_id :<input type="text" name="uid"><br><br>
Old Password :<input type="text" name="opas"><br><br>
New Password :<input type="text" name="npas"><br><br>
Confirm Password :<input type="text" name="cpas"><br><br>
<input type="submit">
<%
 String s=(String)session.getAttribute("error");
 if(s!=null)
 {
	 //out.println(s);
 }
%>
</form>
</body>
</html>