<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bloodbank.donor.Donor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
</head>
<body>
	<h1>Welcome <%
		Donor donor = (Donor) request.getAttribute("donor");
		String fullName = donor.getName();
		out.print(fullName);
		
	%> </h1>
</body>
</html>