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
	<link rel="stylesheet" href="/BloodBank/styles/search.css">
</head>
<body>
	<header>
		<nav>
		  <span>
			BLOOD BANK
		  </span>
		  <ul class="nav-more">
			<li><a href="#">LEARN MORE</a></li>
			<li><a href="#">FAQ</a></li>
			<li><a href="#">TERMS</a></li>
		  </ul>
		  <ul class="nav-auth">
			<li><a href="#">LOG IN</a></li>
			<li><a class="register" href="#">REGISTER</a></li>
		  </ul>
		</nav>
		</header>
		
		<div class="appreciation">
			<h2 class="heading">Find a Donor</h2>
			<p class="subheading">Select the categories to filter your search </p>
		</div>

	<form action="/BloodBank/search" method="get">
		<input id="cityInput" name="city" type="text" placeholder="Search Donor by City">
		<select id="bloodGroupInput" name="bloodGroup">
			<option>A</option>
			<option>B</option>
			<option>AB</option>
			<option>O</option>
		</select>
		<button type="submit" class="btn">Search</button>
	</form>

	<%
		try {
			// For Donors
			String citySearched = (String) request.getAttribute("city");
			ArrayList<Donor> donors = (ArrayList<Donor>) request.getAttribute("donors");
			Lifesaver lifesaver = (Lifesaver) request.getAttribute("lifesaver");

			boolean isDonorSearchEmpty = donors.size() == 0;
			
			if (!isDonorSearchEmpty) {
				out.print("<div class=\"cards\">");
				for (int i = 0; i < donors.size(); i++) {
					Donor donor = donors.get(i);
					out.print(
							"<div class=\"card_details\">"+
							"<img class=\"card-img\" src=\"/BloodBank/img/chris_rock.png\" alt=\"photo\">"+
							"<div class=\"texts\">"+
							"<h3>"+donor.getName()+"</h3>"+
							"<p><b>Blood Group: </b>"+donor.getBloodGroup()+"</p>"+
							"<p><b>City: </b>"+donor.getCity()+"</p>"+
							"<p><b>Email Address: </b>"+donor.getEmailAddress()+"</p>"+
							"<p><b>Sex: </b>"+donor.getSex()+"</p>"+
							"<p><b>Weight: </b>"+String.valueOf(donor.getWeight())+"kg</p>"+
							"<p><b>Contact Number: </b>"+donor.getContactNumber()+"</p>"+
							"<p><b>Date of Birth: </b>"+donor.getDob()+"</p>"+
							"</div>"+
							"</div>"
					);
			    }
				out.print("</div>");
			} else {
				// Lifesaver code should only run when there is no Donor returned.
				
				out.print(
						"<div class=\"lifesaver\">" +
						"<h3 class=\"no-donors-message\"> SORRY, DONORS ARE NOT AVAILABE WITH THE FOLLOWING BLOOD GROUP AND AREA </h3>"+
						"<button id=\"lifesaverBtn\">Check for Lifesaver</button>" +
						"</div>");
				
				
				// For Lifesavers
				boolean isLifesaverSearchEmpty = lifesaver == null;
				
				if (!isLifesaverSearchEmpty) {
					out.print("<div id=\"lifesaverSection\" class=\"lifesaver\" hidden >"+
							"<div class=\"cards\">"+
							"<div class=\"card_details\">"+
							"<img class=\"card-img\" src=\"/BloodBank/img/chris_rock.png\" alt=\"photo\">"+
							"<div class=\"texts\">"+
							"<h3>"+lifesaver.getName()+"</h3>"+
							"<p><b>City: </b>"+lifesaver.getCity()+"</p>"+
							"<p><b>Contact Number: </b>"+lifesaver.getContactNumber()+"</p>"+
							"<p><b>City: </b>"+lifesaver.getEmail()+"</p>"+
							"</div>"+
							"</div>" +
							"</div>");
				} else {
					out.print("<div id=\"lifesaverSection\" class=\"emptySearchMessage lifesaver\" hidden >"+
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
	let bgInput = document.querySelector("#bloodGroupInput");	
	let emptySearchMessage = document.querySelector(".emptySearchMessage");
	let bloodGroup = window.location.href.split('=')[2];
	let city = window.location.href.split('=')[1].split('&')[0]
	
	cityFormInput.value = city;
	bgInput.value = bloodGroup;
	
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