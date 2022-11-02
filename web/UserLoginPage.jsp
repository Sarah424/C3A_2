<%-- 
    Document   : UserLoginPage
    Created on : Nov 2, 2022, 9:58:58 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="UserStyleSheet.css">
    </head>
    <body>
              
        
    <div style="width: 100%; display: table;">
        <div style="display: table-row; height: 100px; " >
            <div class="div-left">
                
             <nav class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="HomePage.jsp" class="project-name">Railway Booking System</a>
            </div>
                 
        </nav>   
                
                
                 <div class="register-div">
        <form action="#" name="register-form" method="POST" class="register-form" >
<h1>Log in to your account</h1>
<br>
<label for="docid" required>User ID</label>
<br>
<input type="text" id="docid" name="documentid" class="login-id"><br>
<span class="under-login-id">This is your National ID or Passport</span>






<br><br>

<label for="password" class="">Password</label>
<br>


<input type="password" name="password" required class="login-pass">

<br>
<p id="errorMsg"></p>
<br>




<input type="submit" value="Login" class="register-submit">
        </form>
    </div>
                
                
                
            </div>
            <div class="div-right"> 
                <h1 style="color:white;">Don't have an account?</h1>
                <h2 style="font-weight: normal; color:#B1D0E0;">Click below to register</h2><br>
                <button class="registerBtn" onclick="window.location.href='Register.jsp';">Register</button>
            </div>
        </div>
    </div>
        
    </body>
</html>

