<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Become a Donor · BloodBank</title>
	</head>
	<body>
		<form action="../registerDonor" method="post">
			<div class="form-group">
			    <label>Full Name</label>
			    <input type="text" name="name">
		  	</div>
		  	
			<div class="form-group">
			    <label>Username</label>
			    <input type="text" name="username">
		  	</div>
		  	
			<div class="form-group">
			    <label>Email address</label>
			    <input type="email" name="emailAddress">
		  	</div>
		  	
			<div class="form-group">
			    <label>Password</label>
			    <input type="password" name="">
		  	</div>
		  	
			<div class="form-group">
			    <label>Confirm Password</label>
			    <input type="password" name="password">
		  	</div>
		  	
			<div class="form-group">
			    <label>Phone Number</label>
			    <input type="text" name="contactNumber">
		  	</div>
		  	
		  	<div class="form-group">
		    	<label>Blood Group</label>
		    	<select name="bloodGroup">
			      	<option>A</option>
			      	<option>B</option>
			      	<option>AB</option>
			      	<option>O</option>	
		    	</select>
		  	</div>
		  	
			<div class="form-group">
			    <label>House Address</label>
			    <input type="text" name="address">
		  	</div>
		  	
			<div class="form-group">
			    <label>City</label>
			    <input type="text" name="city">
		  	</div>
		  	
		  	<div class="form-group">
		    	<label>Sex</label>
		    	<select name="sex">
			      	<option>Male</option>
			      	<option>Female</option>
		    	</select>
		  	</div>
		  	
			<div class="form-group">
			    <label>Weight</label>
			    <input type="text" name="weight">
		  	</div>
		  	
			<div class="form-group">
			    <label>Date of Birth</label>
			    <input type="date" name="dob">
		  	</div>
		  	
			<input type="submit" value="Register"><br>
		</form>
	</body>
</html>