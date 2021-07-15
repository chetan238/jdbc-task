<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Insert title here</title>

</head>
<body>
<div class="container ml-5">

<%
  
  int ie=Integer.parseInt(request.getParameter("id1"));
 session.setAttribute("id1",ie);
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/first","root","root");
Statement st=cn.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM `first`.`formdetails` WHERE `id` ='"+ie+"';");
while(rs.next())
{
%>
   <form class="form" action="editspecific.jsp" method="get">

<label >
Enter First Name </label> <input type="text" class="form-control" name="fname" value="<%=rs.getString("FirstName") %>">

Enter Last Name :  <input type="text" class="form-control" name="lname" value="<%=rs.getString("LastName") %>">

User Name :  <input type="text" class="form-control" name="uname" value="<%=rs.getString("User") %>">

pswd :  <input type="text" class="form-control" name="pname" value="<%=rs.getString("Pswd") %>">

E-mail : <input type="text" class="form-control" name="ename" value="<%=rs.getString("Email") %>">

Country :<select name="c" value="<%=rs.getString("Country") %>">
	<option>IND</option>
	<option>PAK </option>
	<option>AUS</option>
	<option >USA</option>
</select><br><br>
Gender:
<% String gen=rs.getString("Gender");
   //out.println(gen);
   String m="Male";
   String f="Female";
   String o="Other";
	if(gen.equals(m))
	{   
		%><input type="radio" class="form-radio-input" value="Male" name="gender" checked="checked">
		<label for="male">Male</label>
		<input type="radio" class="form-radio-input" value="Female" name="gender">
          <label for="female">Female</label>
          <input type="radio" id="other" class="form-radio-input" name="gender" value="Other">
    <label for="other">Other</label>
	<%}
	else if(gen.equals(f))
	{
		%><input type="radio" class="form-radio-input" value="Male" name="gender">
		<label for="male">Male</label>
		<input type="radio" class="form-radio-input" value="Female" name="gender" checked="checked">
          <label for="female">Female</label>
          <input type="radio" id="other" class="form-radio-input" name="gender" value="Other" >
          <label for="other">Other</label>
	<%}
	if(gen.equals(o)){
		System.out.println(m);
	%>
	<input type="radio" class="form-radio-input" value="Male" name="gender">
		<label for="male">Male</label>
	<input type="radio" id="other" class="form-radio-input" name="gender" value="Female">
    <label for="other">Female</label>
    <input type="radio" id="other" class="form-radio-input" name="gender" value="Other" checked="checked">
          <label for="other">Other</label>
		
	<%}
	%>




<br>
<label>Hobby</label>
<br>
<%
	
	String hby=rs.getString("Hobbies");
        		   if(hby.contains("Reading")&&(hby.contains("Cricket")&&(hby.contains("Football"))))
        		    {%> <input type="checkbox" name="h" class="form-check-input" checked="checked" >
        		        <label for="h">Cricket</label>
        		    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        		        <label for="h">Reading</label> 
        		    	<input type="checkbox" name="h" class="form-radio-input"checked="checked">
        		        <label for="h">Football</label>
        		    <%}
        		  
        		   else if(hby.contains("Cricket")&&hby.contains("Football"))
    {%>
    	<input type="checkbox" name="h" class="form-check-input" checked="checked">
        <label for="h">Cricket</label>
        <input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Reading</label> 
        <input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Cricket")&&hby.contains("Reading"))
    {%> <input type="checkbox" name="h" class="form-check-input" checked="checked">
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Reading</label> 
        <input type="checkbox" name="h" class="form-radio-input" >
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Cricket"))
    {%> <input type="checkbox" name="h" class="form-check-input" checked="checked">
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Football")&&hby.contains("Cricket"))
    {%> <input type="checkbox" name="h" class="form-check-input" checked="checked">
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Football")&&hby.contains("Reading"))
    {%> <input type="checkbox" name="h" class="form-check-input" >
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input"checked="checked">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Football</label>
    <%}
    
    else if(hby.contains("Football"))
    {%> <input type="checkbox" name="h" class="form-check-input">
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Reading")&&hby.contains("Cricket"))
    {%> <input type="checkbox" name="h" class="form-check-input" checked="checked">
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Reading")&&hby.contains("Football"))
    {%> <input type="checkbox" name="h" class="form-check-input" >
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input" checked="checked">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input"checked="checked">
        <label for="h">Football</label>
    <%}
    else if(hby.contains("Reading"))
    {%> <input type="checkbox" name="h" class="form-check-input" >
        <label for="h">Cricket</label>
    	<input type="checkbox" name="h" class="form-radio-input">
        <label for="h">Reading</label> 
    	<input type="checkbox" name="h" class="form-radio-input"checked="checked">
        <label for="h">Football</label>
    <%}
    
%>
 

 
<input type="submit" class="btn btn-success">
</form>
 <% 
}

%>
  </body>
</html>