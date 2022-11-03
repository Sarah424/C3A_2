<%-- 
    Document   : UserOTP
    Created on : Nov 2, 2022, 9:59:15 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP Page</title>
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
            <h1>Verification Code</h1>
<p class="digits">Enter 4 digit verification code sent to your email address</p>
 <div class="user-otp">
                <input class="user-first" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="user-second" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="user-third" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="user-fourth" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
            </div>

            <p class="noOTP">Didn’t receive an OTP?</p>

            <a href="" class="resendOTP">Resend OTP?</a>

            <br><br><br>
<input type="submit" value="Next" class="otp-submit">
<p> </p> 

        </form>
                      <br> 
                     <div class="otp-error">
                        
             <p>&#9888; Invalid Code, Check and try again</p> 
             
         </div>  
    </div>
              
               
                
            </div>
            <div class="div-right"> 
               
            </div>
        </div>
    </div>
        
    </body>
</html>
