<%-- 
    Document   : HomePage
    Created on : Oct 29, 2022, 10:38:48 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="UserStyleSheet.css">
        <script>
    function hdl_change(e) {
        document.getElementById('date2').style.visibility = 
            e.checked && e.id === 'opt_2' ? 'visible' : 'hidden';
    }
</script>
    </head>
    <body>
        <nav class="homepage-navbar" id="long-navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="" class="system-name">Railway Booking System</a>
            </div>
            <div class="list">
                <ul>
                    <li> <a href="Login.jsp" class="login">Login</a></li>
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
              <input id="opt_1" type="radio" name="trip" value="oneway" onchange="hdl_change(this)"> One way
              <input id="opt_2" type="radio" name="trip" value="round" onchange="hdl_change(this)"> Roundtrip<br><br>
              
    <select class="from">
    <option value="Riyadh" selected>Riyadh</option>
    <option value="Jeddah">Jeddah</option>
    </select><br><br>
  <select class="from">
    <option value="" selected>Select Arrival</option>
    <option value="Riyadh">Riyadh</option>
    <option value="Jeddah">Jeddah</option>
  </select><br><br>
  <input type="submit" value="Search Trains">
</form> 
        </div>
        
        
    </body>
</html>
