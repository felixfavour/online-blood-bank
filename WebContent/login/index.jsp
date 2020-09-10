<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Login</title>
</head>
<body>
	<form action="../LoginServlet" method="post">
		<div class="form-group">
		    <label>Username</label>
		    <input type="text" name="username">
	  	</div>
	  	
		<div class="form-group">
		    <label>Password</label>
		    <input type="password" name="password">
	  	</div>
	  	
		<div class="form-group">
		    <input type="submit" value="Login">
	  	</div>
	  	
	</form>
</body>
</html>