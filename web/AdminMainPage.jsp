<%-- 
    Document   : AdminMainPage
    Created on : Oct 24, 2022, 12:56:57 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Home Page</title>
</head>

<body>
    <nav class="navbar">
        <div class="logo">
            <img src="images/logo.png" alt="System Logo" width="50" height="50">
            <a href="" class="project-name">Railway Booking System</a> 
        </div>
        <div class="list">
            <ul>
                <!-- href = jsp file -->
                <li> <a href="">Departures</a></li>
                <li> <a href="">Trips</a></li>
            </ul>
        </div>
        <div class="account">
            <select name="account">
                <!-- value = jsp file -->
                <option value="">Logout</option>
            </select>
        </div>
    </nav>
</body>

</html>