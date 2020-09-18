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
	<header class="container">
		<nav class="row">
		  <span class="col">
			BLOOD BANK
		  </span>
		  <ul class="nav-more col row">
			<li><a href="#" class="col">EXPLORE</a></li>
			<li><a href="#"  class="col">FAQ</a></li>
			<li><a href="#"  class="col">TERMS</a></li>
		  </ul>
  
		  <ul class="nav-auth row">
			<li class="col"><a href="#">LOG IN</a></li>
			<li class="col"><a class="register" href="#">REGISTER</a></li>
		  </ul>
		</nav>
		</header>
		
		<div class="appreciation">
			<h2 class="heading">Find a Donor</h2>
			<p class="subheading">Select the categories to filter your search </p>
		</div>

	<form class="container" action="/BloodBank/search" method="get">
        <div class="row">
        <input type="text" name="city" id="cityInput" class="col" placeholder="Search Donor by City">
          <select name="bloodGroup" id="bloodGroupInput" class="col">
                <option>A</option>
                <option>B</option>
                <option>AB</option>
                <option>O</option>	
          </select>
        <button type="submit" class="btn btn-danger col">Search</button>
        </div>
	  </form>
	  
	  <div class="container">
        <div class="row" style="gap: 20px;">
        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="..." class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Obi Favour</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. In, laudantium?</p>
                <p class="card-text">Email</p>
                <p class="card-text">Age</p>
                <p class="card-text">Bloodgroup</p>
              </div>
            </div>
          </div>
        </div>

        <div class="card mb-3" style="max-width: 540px;">
          <div class="row no-gutters">
            <div class="col-md-4">
              <img src="..." class="card-img" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Kelechi Felix</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur, est.</p>
                <p class="card-text">Email</p>
                <p class="card-text">City</p>
                <p class="card-text">Address</p>
              </div>
            </div>
          </div>
        </div>
      </div>
	  </div>
	  
	  <footer>
        <div class="row">
        <h6 class="col">BLOOD BANK</h6>
        <p class="col">DONOR</p>
        <p class="col">SEEKER</p>
        <p class="col">FAQ</p>
        <p class="col">TERMS & CONDITIONS</p>
        <p class="col">CONTACT US</p>
        </div>
	</footer>

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