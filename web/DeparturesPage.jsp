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
                    <li> <a href="DeparturesPage.jsp" class="departures">Departures</a></li>
                    <li> <a href="TripPage.jsp">Trips</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <input type="image" name="profile" src="images/profile.png" width="35px" class="dropBtn">
                <div class="dropdown-content">
                    <a href="#">Logout</a>
                </div>
            </div>
        </nav>

        <h1>Departures</h1>

        <div class="searchDiv">
            <input type="text" class="search-from" placeholder="From Where?">
            <input type="text" class="search-to" placeholder="Where To?">
            <input type="button" class="searchBtn" value="Search">
        </div>

        <table class="departuresTable">
            <tr>
                <th>Trip ID</th>
                <th>From</th>
                <th>To</th>
                <th>Date & Time</th>
                <th>Gate</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>

                </td>
            </tr>
        </table>
    </body>
</html>