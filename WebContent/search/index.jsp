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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" href="/BloodBank/styles/styles.css">
</head>
<body>
		<header>
			<div class="container">
		        <nav class="row">
		        	
		        	<div class="logo-container col-4">
		            	<a href="/BloodBank"><img class="" src="/BloodBank/img/bb-logo.png"></a>
		            </div>
		            <div class="auth-methods col-8">
			          <ul class="nav-auth row">
			            <li class=" offset-md-6 col-md-2"><a href="login/index.jsp">DONOR</a></li>
			            <li class=" col-md-2"><a href="login/index.jsp">FAQs</a></li>
			            <li class=" col-md-2"><a href="login/index.jsp">TERMS</a></li>
			          </ul>
		            </div>
		        </nav>
		    </div>
		</header>
		<hr>
		
		<div class="appreciation">
			<h2 class="heading">Find a Donor</h2>
			<p class="subheading">Select the categories to filter your search </p>
		</div>

	<form class="container" action="/BloodBank/search" method="get">
        <div class="row">
        <input type="text" name="city" id="cityInput" class="search-row col" placeholder="Search Donor by City">
          <select name="bloodGroup" id="bloodGroupInput" class="search-row col-2">
                <option>A</option>
                <option>B</option>
                <option>AB</option>
                <option>O</option>	
          </select>
        <button type="submit" class="button-default search-row col-2">Search</button>
        </div>
	  </form>
	  
	  <div class="container">
	  
	<%
		try {
			// For Donors
			String citySearched = (String) request.getAttribute("city");
			ArrayList<Donor> donors = (ArrayList<Donor>) request.getAttribute("donors");
			Lifesaver lifesaver = (Lifesaver) request.getAttribute("lifesaver");

			boolean isDonorSearchEmpty = donors.size() == 0;
			
			if (!isDonorSearchEmpty) {
				out.print("<div class=\"row\">");
				for (int i = 0; i < donors.size(); i++) {
					Donor donor = donors.get(i);
					out.print(
							"<div class=\"card-details col-md-12 col-lg-6\">"+
							"<div class=\"row \">"+
							"<img class=\"card-img col-6\" src=\"/BloodBank/img/chris_rock.png\" alt=\"photo\">"+
							"<div class=\"texts col-6\">"+
							"<h3>"+donor.getName()+"</h3>"+
							"<p><b>Blood Group: </b>"+donor.getBloodGroup()+"</p>"+
							"<p><b>City: </b>"+donor.getCity()+"</p>"+
							"<p><b>Email Address: </b>"+donor.getEmailAddress()+"</p>"+
							"<p><b>Sex: </b>"+donor.getSex()+"</p>"+
							"<p><b>Weight: </b>"+String.valueOf(donor.getWeight())+"kg</p>"+
							"<p><b>Contact Number: </b>"+donor.getContactNumber()+"</p>"+
							"<p><b>Date of Birth: </b>"+donor.getDob()+"</p>"+
							"</div>"+
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
						"<button class=\"button-default\" id=\"lifesaverBtn\">Check for Lifesaver</button>" +
						"</div>");
				
				
				// For Lifesavers
				boolean isLifesaverSearchEmpty = lifesaver == null;
				
				if (!isLifesaverSearchEmpty) {
					out.print("<div id=\"lifesaverSection\" class=\"lifesaver\" hidden >"+
							"<div class=\"card-details col-md-12 col-lg-6\">"+
							"<div class=\"row \">"+
							"<img class=\"card-img col-6\" src=\"/BloodBank/img/chris_rock.png\" alt=\"photo\">"+
							"<div class=\"texts col-6\">"+
							"<h3>"+lifesaver.getName()+"</h3>"+
							"<p><b>City: </b>"+lifesaver.getCity()+"</p>"+
							"<p><b>Contact Number: </b>"+lifesaver.getContactNumber()+"</p>"+
							"<p><b>City: </b>"+lifesaver.getEmail()+"</p>"+
							"</div>"+
							"</div>" +
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
	</div>
        
        <footer>
        	<div class="container">
	           <div class="row">
	            <a href="/BloodBank" class="col-md-4">
	            	<img class="img-fluid" src="/BloodBank/img/bb-logo.png">
	            </a>
	            <a href="/BloodBank/donor/index.jsp" class=" offset-md-4 col-md-1">DONOR</a>
	            <a href="/BloodBank/seeker/index.jsp" class="col-md-1">SEEKER</a>
	            <a href="/BloodBank/faq/index.jsp" class="col-md-1">FAQs</a>
	            <a href="/BloodBank/terms/index.jsp" class="col-md-1">TERMS</a>
	           </div>
        	</div>
       </footer>
	
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