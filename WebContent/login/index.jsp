<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Donor Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="/BloodBank/styles/styles.css" />
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
      <h2 class="heading">We Appreciate You</h2>
      <p class="subheading">Login as a DONOR here</p>
  </div>

  <form method="post" class="myForm">
    <div class="form-group">
      <label for="firstname">USERNAME</label>
      <input class="form-control" type="text" name="username" placeholder="Your username" />
    </div>
    <div class="form-group">
      <label for="lastname">PASSWORD</label>
      <input class="form-control" type="password" name="password" placeholder="Password" />
    </div>
    
    <%
    	try {
    		String status = (String) request.getAttribute("status");
    		
    		if (status != "SUCCESS" && status != null) {
    			out.print(
    					"<div>" +
   						"Your username or password might be incorrect" +
    					"</div>"
    					);    			
    		}
    	}
    	catch (Exception ex) {}
    %>
      

      <div class="form-group"><button class="btn  btn-danger" type="submit">LOGIN</button></div>
      <!-- Link this create to register page -->
      <p>Don't have an account? <a href="#" class="create">Create</a></p> 
    </form>

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