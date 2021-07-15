<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container ml-5">
<form class="form" action="sendTOdb.jsp" method="get">

<label >Enter First Name </label> <input type="text" class="form-control" name="fname">
Enter Last Name :  <input type="text" class="form-control" name="lname">
User Name :  <input type="text" class="form-control" name="uname">
pswd :  <input type="text" class="form-control" name="pname">
E-mail : <input type="text" class="form-control" name="ename">
Country :<select name="c">
	<option>IND</option>
	<option>PAK </option>
	<option>AUS</option>
	<option >USA</option>
</select><br><br>
Gender:
<input type="radio" class="form-radio-input" id="male" name="gender" value="Male">
<label for="male">Male</label>

<input type="radio" class="form-radio-input" id="female" name="gender" value="Female">
<label for="female">Female</label>

<input type="radio" id="other" class="form-radio-input" name="gender" value="Other">
<label for="other">Other</label><br>
Hobby :<br>
 <input type="checkbox" name="h" class="form-check-input" value="Cricket">Cricket
<input type="checkbox" name="h" class="form-radio-input" value="Football">Football
<input type="checkbox" name="h" class="form-radio-input" value="Reading">Reading<br><br>
<input type="submit" class="btn btn-success">
</form>
</div>
</body>
</html>