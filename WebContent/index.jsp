<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Blood Bank</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/BloodBank/img/favicon.png" type="image/x-icon">
	<link rel="stylesheet" href="styles/styles.css"/>
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
			            <li class="offset-md-6 col-md-3"><a href="login/index.jsp">LOG IN</a></li>
			            <li class="col-md-3"><a class="register" href="register/index.jsp">REGISTER</a></li>
			          </ul>
		            </div>
		        </nav>
		    </div>
		</header>
			
		<main>
			<div class="hero">			
	            <h1>Welcome to the Online Bloodbank</h1>
	            <p>Are you a blood</p>
				<ul class="nav-auth row">
					<li><a  class="register button-default col" href="register/index.jsp">DONOR</a></li>
					<li><a  class="search  button-default btn-light col" href="search/index.jsp">SEEKER</a></li>
				</ul>
			</div> 
	    </main>

		<div class="d-flex justify-content-center cards home-cards">
		
			<div class="card col-md-4">
				<div class="card-body">
				  <h5 class="card-title">Care & Medications</h5>
				  <p class="card-text">We make sure to provide care to blood donors. Believe me, nothing will happen to you</p>
				  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolore vel enim aperiam officia possimus eum voluptas nihil fugiat explicabo.</p>
				</div>
			  </div>
		
			<div class="card col-md-4">
				<div class="card-body">
				  <h5 class="card-title">Availabilty</h5>
				  <p class="card-text">Blood is always available at our blood bank so no need to panic. You will be trated</p>
				  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis dolorum pariatur sit aliquid nesciunt ipsum magni qui. Eligendi, itaque soluta.</p>
				</div>
			  </div>
	
			<div class="card col-md-4">
				<div class="card-body">
				  <h5 class="card-title">Safe and Secure</h5>
				  <p class="card-text">Evertyhing is secure and safe. Blood transfusions done in the right way</p>
				  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas exercitationem eaque nobis cupiditate nulla sed explicabo minus ut magnam labore!</p>
				</div>
			  </div>
		</div>


        <section class="info">
            <h2>We have Donors in 1000 Major Cities Worldwide </h2>
          	<h2>with that number growing daily </h2>
        </section>
        
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
</body>
</html>