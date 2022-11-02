<%-- 
    Document   : HomePage
    Created on : Nov 2, 2022, 9:57:44 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="UserStyleSheet.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
    
</script>
    </head>
    <body>
        <nav class="homepage-navbar" id="long-navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="HomePage.jsp" class="system-name">Railway Booking System</a>
            </div>
            <div class="list">
                <ul>
                    <li> <a href="UserLoginPage.jsp" class="login">Login</a></li>
                    <li> <a href="Register.jsp" class="register">Register</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <input type="image" name="profile" src="images/profile.png" width="35px" class="dropBtn">
                <div class="dropdown-content">
                    <a href="#">Logout</a>
                </div>
            </div>
        </nav>
        
        <div class="div-bg">
            <img class="form-background" src="images/subway.jpg" width="100%" height="600" alt="alt"/>  
            <form action="/action_page.php" class="homepage-from">
              <br>
              
    <select class="from">
    <option value="Riyadh" selected>Riyadh</option>
    <option value="Jeddah">Jeddah</option>
    </select><br><br>
  <select class="from">
    <option value="" selected>Select Arrival</option>
    <option value="Riyadh">Riyadh</option>
    <option value="Jeddah">Jeddah</option>
  </select><br><br>
  <select class="passengers">
    <option value="" selected>0 Passengers</option>
    <option value="1">1 Passengers</option>
    <option value="2">2 Passengers</option>
    <option value="3">3 Passengers</option>
    <option value="4">4 Passengers</option>
    <option value="5">5 Passengers</option>
    <option value="6">6 Passengers</option>
    <option value="7">7 Passengers</option>
    <option value="8">8 Passengers</option>
    <option value="9">9 Passengers</option>
    <option value="10">10 Passengers</option>
  </select>
  <input type="submit" value="Search Trains" class="register-submit">
</form> 
            <div class="advatages">
   <img class="adv-background" src="images/advantages.png" width="1248px" height="350" alt="alt"/>
</div>
            <footer>
                <h2>Contact Us</h2>
                <span class="footer-email">&#9993;railway_booking@outlook.com</span><span class="footer-phone"><i style="font-size:24px" class="fa">&#xf095;</i>+966 413 4758</span><br>
                <br><hr class="solid"><br>
                <span><img src="images/logo.png" alt="System Logo" width="32" height="32" class="footer">Railway Booking System</span><span class="copyright">&copy;2022 C3A_2</span>
                <br>
                <p> </p>
            </footer>
        </div>
        
        
    </body>
</html>

