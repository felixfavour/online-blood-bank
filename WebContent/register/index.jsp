<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Become a Donor · BloodBank</title>
		<link rel="stylesheet" href="/BloodBank/styles/register.css">
		<style type="text/css">
			
			  #dialog {
			    background-color: #f8e3e7;
			    border: 6px solid darkred;
			    top: auto;
			    right: auto;
			    padding: 10px;
			    margin: auto;
			    width: 30%;
			    text-align: center
			  }
			
			  #dialog header {
			    background-color: darkred;
			    padding: 8px;
			    color: #f8e3e7;
			  }
			
			  #dialog header .header {
			    font-size: 16px;
			  }
			
			  #dialog .close-btn {
			    float: right;
			    font-size: 10px;
			  }
  
		</style>
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
			<h2 class="heading">Get Started now</h2>
			<p class="subheading">Register as a Blood DONOR </p>
		</div>

		<form action="/BloodBank/register" method="post" class="myForm">

		<div class="formFlex">
	        <div class="formDetails">
	            <label for="name">FULL NAME</label>
	            <input  required="required" name="name" type="text" placeholder="Name">
	        </div>
	        <div class="formDetails">
	            <label for="username">USERNAME</label>
	            <input  required="required" name="username" type="text" placeholder="username">
	        </div>
        </div>

        <div class="formFlex">
	        <div class="formDetails">
	            <label for="email">EMAIL ADDRESS</label>
	            <input  required="required" name="emailAddress" type="email" placeholder="holla@bbank.com">
	        </div>
	        <div class="formDetails">
	            <label for="contact">CONTACT NUMBER</label>
	            <input  required="required" name="contactNumber" type="text" placeholder="+234 132 32142">
	        </div>
        </div>

        <div class="formFlex">
	        <div class="formDetails">
	            <label for="password">PASSWORD</label>
	            <input id="password" required="required" type="password" placeholder="password">
	        </div>
	        <div class="formDetails">
	            <label for="confirmpassword">CONFIRM PASSWORD</label>
	            <input id="confirmPassword" required="required" name="password" type="password" placeholder="confirm password">
	        </div>
        </div>
        
        <div class="formFlex">

	         <div class="form-group">
	           <label>BLOOD GROUP</label>
	           <select name="bloodGroup">
	                 <option>A</option>
	                 <option>B</option>
	                 <option>AB</option>
	                 <option>O</option>	
	           </select>
	         </div>

	         <div class="form-group">
	           <label>SEX</label>
	           <select name="sex">
	                 <option>Male</option>
	                 <option>Female</option>
	           </select>
	         </div>
          
	         <div class="formDetails">
	             <label for="weight">WEIGHT</label>
	             <input  required="required" name="weight" type="number" placeholder="weight">
	         </div>
        </div>

        <div class="formFlex">
        
	        <div class="formDetails">
	            <label for="dateofbirth">DATE OF BIRTH</label>
	            <input  required="required" name="dob" type="date" placeholder="select date of birth">
	        </div>
	
	        <div class="formDetails">
	            <label for="city">CITY</label>
	            <input required="required" name="city" type="text" placeholder="City of Residence">
	        </div>
        </div>

        <div class="formFlex">
	
	        <div class="formDetails">
	            <label for="address">ADDRESS</label>
	            <input  required="required" name="address" type="text" placeholder="Residential Address">
	        </div>

        </div>

        <button id="submit" class="btn" type="submit">REGISTER</button>
        <p>Already a donor? <a href="#" class="login">Log in</a></p>
    </form>
    
    <div id="dialog">
    	<header>
	    	<span class="header">Error!</span>
	    	<span hidden class="close-btn"><button>x</button></span>
    	</header>
    	<p>
    		<%
    			try {
        			String error = (String) request.getAttribute("error");
    	           	out.print(error);
    			} catch(NullPointerException ex) {}
    		%>
    	</p>
    </div>

    <footer>
        <div class="footerdetails">
        <h3>BLOOD BANK</h3>
        <p>DONOR</p>
        <p>SEEKER</p>
        <p>FAQ</p>
        <p>TERMS & CONDITIONS</p>
        <p>CONTACT US</p>
        </div>
	</footer>
	
	<script type="text/javascript">
	
		let dialog = document.querySelector('#dialog');
		let errorMessage = document.querySelector('#dialog p');
		let password = document.querySelector('#password');
		let confirmPassword = document.querySelector('#confirmPassword');
		let submitBtn = document.querySelector('#submit');
		
		if (errorMessage.textContent.includes("null") || errorMessage.textContent == "") {
			dialog.hidden = true;
		} else {
			dialog.hidden = false;
			window.location.hash = "dialog";
		}
		
		confirmPassword.oninput = () => {
			if (confirmPassword.value != password.value) {
				password.style.border = '2px solid red';
				confirmPassword.style.border = '2px solid red';
				submitBtn.disabled = true;
			} else {
				password.style.border = '0px';
				confirmPassword.style.border = '0px';
				submitBtn.disabled = false;
			}
		}
		
		
	</script>
	</body>
</html>