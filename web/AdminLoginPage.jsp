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

        <%
            try {
            if (request.getParameter("error").equals("1") || request.getParameter("error").equals("3")){
            
        %>
        <script>alert("Username or password is invalid");</script>
        <%
            } else if(request.getParameter("error").equals("2")){
%>
        <script>alert("Account is not registered");</script>
        <%
}
        }catch(NullPointerException ex ){
        }
        %>
        
        <span>
            <img src="images/background.png" alt="background image" class="background">
        </span>

        <img class="logoLogin" src="images/logo.png" alt="System Logo" width="130" height="130">
        <h1 class="systemName">Railway Booking Administration System</h1>

        <form name="loginForm" action="AdminOTP.jsp" method="POST">
            <div class="id">
                <label class="idLabel" for="id">Username</label>
                <br>
                <input class="idInput" type="text" name="username" placeholder="Enter Your Username">
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