<%-- 
    Document   : AdminOTP
    Created on : Oct 26, 2022, 12:10:57 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Otp</title>
    </head>

    <body class="LoginBody">
        <span>
            <img src="images/background.png" alt="background image" class="background">
        </span>

        <img class="logoLogin" src="images/logo.png" alt="System Logo" width="130" height="130">
        <h1 class="systemName">Railway Booking Administration System</h1>


        <p class="email">Please enter the verification code sent to EMAIL</p>

        <form action="" method="POST">

            <div class="otp">
                <input class="first" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="second" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="third" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input class="fourth" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
            </div>

            <p class="otpMsg">Didn’t receive an OTP?</p>

            <a href="" class="otpResend">Resend OTP?</a>

            <input type="submit" name="submit" value="Submit" class="submitBtn">
        </form>
    </body>

</html>