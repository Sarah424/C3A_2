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



            var counter = 0;

            function increment() {
                counter++;

                document.getElementById("count").innerHTML = counter;
            }
            function decrement() {
                if(counter===0){
                    counter=0;
                }else{
                counter--;
            }
                document.getElementById("count").innerHTML = counter;
            }
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
            <form action="AvailableTrips.jsp" method="post" class="homepage-from">
               
                <div class="div3">      
                    <span><i style="font-size:24px; color:#1A374D " class="fa">&#xf041;</i></span>  <select name="from" class="from">
                        <option value="Riyadh" selected>Riyadh</option>
                        <option value="Jeddah">Jeddah</option>
                    </select><br><br>
                    <span><i style="font-size:24px; color:#1A374D " class="fa">&#xf041;</i></span>  <select name="to" class="from">
                        <option value="" selected>Select Arrival</option>
                        <option value="Riyadh">Riyadh</option>
                        <option value="Jeddah">Jeddah</option>
                    </select><br>
                </div>
                
                <div class="div3"> 
                    <div class="passengers">
                        <span>&plus;</span>
                        <span id="count">0</span> Passengers</div>
                    <span  ><input class="plus" type="button" onClick="increment()" value="&plus;"/></span>
                    <span  ><input class="minus" type="button" onClick="decrement()" value="&minus;"/></span>
                    <br><br>
<div class="passengers">
                        <span>Depart: </span>
                        <input type="date" name="date" class="datePicker" name="depart"
       value="">
                </div>
                </div>
                <br><br>
                <input type="submit" value="Search Trains &#8250;" class="register-submit">
            </form> 
            <div class="advatages">
                <img class="adv-background" src="images/advantages.png" width="1248px" height="350" alt="alt"/>
            </div>
            <footer>
                <h2 class="contactUs">Contact Us</h2>
                <span class="footer-email">&#9993;&nbsp;railway_booking@outlook.com</span>
                <span class="footer-phone"><i style="font-size:24px" class="fa">&#xf095;</i>&nbsp;+966 413 4758</span><br>
                <br><hr class="solid"><br>
                <span class="foot-sys-name"><img src="images/logo.png" alt="System Logo" width="32" height="32" class="footer">&nbsp;&nbsp;&nbsp;Railway Booking System</span>
                <span class="copyright">&copy;2022 C3A_2</span>
                
                <p>&nbsp; </p>
            </footer>
        </div>


    </body>
</html>

