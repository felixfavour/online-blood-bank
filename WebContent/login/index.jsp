<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Donor Login</title>
    <link rel="stylesheet" href="../styles/login.css" />
  </head>
  <body>
    <header>
      <nav>
        <span> BLOOD BANK </span>
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
      <h2 class="heading">We Appreciate You</h2>
      <p class="subheading">Login as a DONOR here</p>
    </div>

    <form action="../LoginServlet" method="post" class="myForm">
      <div class="formDetails">
        <label for="firstname">FIRST NAME</label>
        <input type="text" placeholder="First Name" />
      </div>
      <div class="formDetails">
        <label for="lastname">LAST NAME</label>
        <input type="text" placeholder="Last Name" />
      </div>

      <button class="btn" type="submit">LOGIN</button>
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
