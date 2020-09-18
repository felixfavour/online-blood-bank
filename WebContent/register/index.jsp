<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Become a Donor � BloodBank</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
		<link rel="stylesheet" href="/BloodBank/styles/styles.css">
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
			<h2 class="heading">Get Started now</h2>
			<p class="subheading">Register as a Blood DONOR </p>
		</div>

		<form action="/BloodBank/register" method="post" class="myForm">

		<div class="formFlex row">
	        <div class="form-group col">
	            <label for="name">FULL NAME</label>
	            <input class="form-control"  required="required" name="name" type="text" placeholder="Name">
			</div>

	        <div class="form-group col">
	            <label for="username">USERNAME</label>
	            <input class="form-control"  required="required" name="username" type="text" placeholder="username">
	        </div>
        </div>

        <div class="formFlex row">
	        <div class="form-group col">
	            <label for="email">EMAIL ADDRESS</label>
	            <input class="form-control"  required="required" name="emailAddress" type="email" placeholder="holla@bbank.com">
	        </div>
	        <div class="form-group col">
	            <label for="contact">CONTACT NUMBER</label>
	            <input class="form-control"  required="required" name="contactNumber" type="text" placeholder="+234 132 32142">
	        </div>
        </div>

        <div class="formFlex row">
	        <div class="form-group col">
	            <label for="password">PASSWORD</label>
	            <input id="password" required="required" type="password" placeholder="password">
	        </div>
	        <div class="form-group col">
	            <label for="confirmpassword">CONFIRM PASSWORD</label>
	            <input id="confirmPassword" required="required" name="password" type="password" placeholder="confirm password">
	        </div>
        </div>
        
        <div class="formFlex row">

	         <div class="form-group row">
	           <label class="col">BLOOD GROUP</label>
	           <select class="col" name="bloodGroup">
	                 <option>A</option>
	                 <option>B</option>
	                 <option>AB</option>
	                 <option>O</option>	
	           </select>
	         </div>

	         <div class="form-group row">
	           <label class="col">SEX</label>
	           <select class="col" name="sex">
	                 <option>Male</option>
	                 <option>Female</option>
	           </select>
	         </div>
          
	         <div class="form-group col">
	             <label for="weight">WEIGHT</label>
	             <input class="form-control"  required="required" name="weight" type="number" placeholder="weight">
	         </div>
        </div>

        <div class="formFlex row">
        
	        <div class="form-group col">
	            <label for="dateofbirth">DATE OF BIRTH</label>
	            <input class="form-control"  required="required" name="dob" type="date" placeholder="select date of birth">
	        </div>
	
	        <div class="form-group col">
	            <label for="city">CITY</label>
	            <input class="form-control" required="required" name="city" type="text" placeholder="City of Residence">
	        </div>
        </div>

        <div class="formFlex">
	
	        <div class="form-group">
	            <label for="address">ADDRESS</label>
	            <input class="form-control"  required="required" name="address" type="text" placeholder="Residential Address">
	        </div>

        </div>
			<div class="divBtn">
        <button id="submit" class="btn btn-danger" type="submit">REGISTER</button>
		<p>Already a donor? <a href="#" class="login">Log in</a></p>
		</div>
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
		<div class="row">
		<h6 class="col">BLOOD BANK</h6>
		<p class="col">DONOR</p>
		<p class="col">SEEKER</p>
		<p class="col">FAQ</p>
		<p class="col">TERMS & CONDITIONS</p>
		<p class="col">CONTACT US</p>
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