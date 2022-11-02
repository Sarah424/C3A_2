<%-- 
    Document   : Register
    Created on : Nov 2, 2022, 9:58:04 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
        <form action="#" name="register-form" method="POST" class="register-form">
<h1>Create Account</h1>
<label for="doctype" class="doctype">Document Type</label>


<label for="docid" required>Document ID</label>


<br><br>


<select name="doctype" id="doctype" class="select-doctype">
    <option value="doc_type">National ID</option>
    <option value="doc_type">PASSPORT</option>
</select>
<input type="text" id="docid" name="documentid" class="docid">

<br><br>

<label for="title">Title</label>
<label for="fname" class="fname">First Name</label>
<label for="lname" class="lname">Last Name</label>
<br><br>
<select name="title" id="title" class="select-title">
    <option value="title">Mr</option>
    <option value="title">Mrs</option>
    <option value="title">Miss</option>

</select>


<input type="text" id="fname" name="firstname" class="fname-input">


<input type="text" id="lname" name="lastname" class="lname-input"><br>

<br>


<label for="dob" class="dob">Date of Birth</label>

<label for="password" class="password">Password</label>
<br><br>

<input type="date" name="date-of-birth" 
        placeholder="mm/dd/yyyy" value=""
        min="1900-01-01" max="2030-12-31" class="dob-input">

<input type="password" name="password" required class="password-input">

<br><br>

<label for="phone">Mobile Number</label>
<label for="doctype" class="email">Email</label>

<br><br>

<input type="text" name="phone" placeholder="05XXXXXXXX" class="phone-input">

<input type="text" name="email" required class="email-input">
<p class="under-email">This email will be used for sending OTP for logins</p>

<p id="errorMsg"></p>


<input type="submit" value="Register" class="register-submit">
        </form>
    </div>
                
                
                
            </div>
            <div class="div-right"> 
                <h1 style="color:white;">Already have an account?</h1>
                <h2 style="font-weight: normal; color:#B1D0E0;">Click below to login</h2><br>
                <button class="registerBtn" onclick="window.location.href='UserLoginPage.jsp';">Login</button>
            </div>
        </div>
    </div>
        
    </body>
</html>
