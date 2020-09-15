<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Become a Donor � BloodBank</title>
		<link rel="stylesheet" href="../styles/register.css">
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

		<form action="../registerDonor" method="post" class="myForm">

			<div class="formFlex">
        <div class="formDetails">
            <label for="name">FULL NAME</label>
            <input type="text" placeholder="Name">
        </div>
        <div class="formDetails">
            <label for="username">USERNAME</label>
            <input type="text" placeholder="username">
        </div>
        </div>

        <div class="formFlex">
        <div class="formDetails">
            <label for="email">EMAIL ADDRESS</label>
            <input type="email" placeholder="holla@ ... .com">
        </div>
        <div class="formDetails">
            <label for="password">PASSWORD</label>
            <input type="password" placeholder="password">
        </div>

        </div>

        <div class="formFlex">
        <div class="formDetails">
            <label for="confirmpassword">CONFIRM PASSWORD</label>
            <input type="password" placeholder="confirm password">
        </div>
        <div class="formDetails">
            <label for="contact">CONTACT NUMBER</label>
            <input type="number" placeholder="+234 132 32142">
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
            <input type="text" placeholder="weight">
        </div>
        </div>

        <div class="formFlex">
        <div class="formDetails">
            <label for="dateofbirth">DATE OF BIRTH</label>
            <input type="date" placeholder="date of birth">
        </div>

        <div class="formDetails">
            <label for="address">ADDRESS</label>
            <input type="text" placeholder="Address">
        </div>

        </div>

        <button class="btn" type="submit">REGISTER</button>
        <p>Already a donor? <a href="#" class="login">Log in</a></p>
    </form>

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
	</body>
</html>