<%-- 
    Document   : AdminLoginPage
    Created on : Oct 25, 2022, 10:45:00 PM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Login</title>
    </head>
    <body class="LoginBody">
        <span>
            <img src="images/background.png" alt="background image" class="background">
        </span>

        <img class="logoLogin" src="images/logo.png" alt="System Logo" width="130" height="130">
        <h1 class="systemName">Railway Booking Administration System</h1>

        <form action="" method="POST">
            <div class="id">
                <label class="idLabel" for="id">ID</label>
                <br>
                <input class="idInput" type="text" name="ID" placeholder="Enter Your ID">
            </div>
            <br>
            <br>
            <div class="password">
                <label class="passwordLabel" for="password">Password</label>
                <br>
                <input class="passwordInput" type="password" name="password" placeholder="**********">
            </div>
            <br>
            <div>
                <input type="submit" name="submit" value="Login" class="loginBtn">
            </div>
        </form>
    </body>
</html>