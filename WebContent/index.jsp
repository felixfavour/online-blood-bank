<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Blood Bank</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" href="styles/styles.css"/>
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
	
	<main>
		<div class="hero">			
            <h1>Welcome to the Online Bloodbank</h1>
            <p>Are you a blood</p>
			<ul class="nav-auth row">
				<li><a  class="register btn btn-danger col" href="register">DONOR</a></li>
				<li><a  class="search btn btn-light col" href="search">SEEKER</a></li>
			</ul>
		</div> 
    </main>

<div class="d-flex justify-content-center cards">

	<div class="card">
		<div class="card-body">
		  <h5 class="card-title">Care & Medications</h5>
		  <p class="card-text">We make sure to provide care to blood donors. Believe me, nothing will happen to you</p>
		  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolore vel enim aperiam officia possimus eum voluptas nihil fugiat explicabo.</p>
		</div>
	  </div>

		<div class="card">
			<div class="card-body">
			  <h5 class="card-title">Availabilty</h5>
			  <p class="card-text">Blood is always available at our blood bank so no need to panic. You will be trated</p>
			  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis dolorum pariatur sit aliquid nesciunt ipsum magni qui. Eligendi, itaque soluta.</p>
			</div>
		  </div>

		<div class="card">
			<div class="card-body">
			  <h5 class="card-title">Safe and Secure</h5>
			  <p class="card-text">Evertyhing is secure and safe. Blood transfusions done in the right way</p>
			  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas exercitationem eaque nobis cupiditate nulla sed explicabo minus ut magnam labore!</p>
			</div>
		  </div>
</div>


        <section class="info">
            <p>We have Donors in 1000 Major Cities Worldwide </p>
          <p>  with that number growing daily </p>
        </section>

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
</body>
</html>