<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.bloodbank.donor.Donor" %>  
<%@ page import="com.bloodbank.lifesaver.Lifesaver" %>   
<%@ page import="java.util.*" %>    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Donors Around Me</title>
</head>
<body>
	<h1>Find Donors around my city</h1>
	<form action="/BloodBank/search" method="get">
		<input id="cityInput" name="city" type="text">
		<select name="bloodGroup">
			<option>A</option>
			<option>B</option>
			<option>AB</option>
			<option>O</option>
		</select>
		<input type="submit" value="Search Donors">
	</form>
	
	<%
		try {
			// For Donors
			String citySearched = (String) request.getAttribute("city");
			ArrayList<Donor> donors = (ArrayList<Donor>) request.getAttribute("donors");
			Lifesaver lifesaver = (Lifesaver) request.getAttribute("lifesaver");

			boolean isDonorSearchEmpty = donors.size() == 0;
			
			if (!isDonorSearchEmpty) {
				for (int i = 0; i < donors.size(); i++) {
			    	out.print("<h3>" + donors.get(0).toString() + "</h3>");
			    }
			} else {
				// Lifesaver code should only run when there is no Donor returned.
				
				out.print("<h3 class=\"\"> SORRY, DONORS ARE NOT AVAILABE WITH THE FOLLOWING BLOOD GROUP AND AREA </h3>"+
						"<button id=\"lifesaverBtn\">Check Lifesavers</button>");
				
				
				// For Lifesavers
				boolean isLifesaverSearchEmpty = lifesaver == null;
				
				if (!isLifesaverSearchEmpty) {
					out.print("<div id=\"lifesaverSection\"  hidden >"+
							"<h3> HURRAY! WE FOUND A LIFESAVER </h3>" + 
							"<div>"+ lifesaver.toString() + "</div>" +
							"</div>");
				} else {
					out.print("<div id=\"lifesaverSection\" class=\"emptySearchMessage\" hidden >"+
							"<h3> SORRY, THERE ARE NO LIFESAVING CONTACTS ASSIGNED TO YOUR CITY AT THE MOMENT </h3>" + 
							"<a href=\"mobilink\">Although, You could request more assistance through our Mobilink Paging Service</a>"+
							"</div>");
				}
			}
		
		} catch(NullPointerException ex) {}
	%>
	
<script type="text/javascript">

	let lifesaverBtn = document.querySelector("#lifesaverBtn");
	let lifesaverSection = document.querySelector("#lifesaverSection");
	let cityFormInput = document.querySelector("#cityInput");
	let emptySearchMessage = document.querySelector(".emptySearchMessage");
	
	lifesaverBtn.addEventListener('click', () => {
		if(lifesaverSection.hidden) {
			lifesaverSection.hidden = false
		} else {
			lifesaverSection.hidden = true
		}
	})
	
	if(cityFormInput.value == "") {
		emptySearchMessage.hidden = true
	}	
	
	
</script>
</body>
</html>