<%-- 
    Document   : TripPage
    Created on : Oct 25, 2022, 12:30:48 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Trips</title>
    </head>

    <body>
        <nav class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="" class="project-name">Railway Booking System</a>
            </div>
            <div class="list">
                <ul>
                    <li> <a href="DeparturesPage.jsp">Departures</a></li>
                    <li> <a href="TripPage.jsp" class="trips">Trips</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <input type="image" name="profile" src="images/profile.png" width="35px" class="dropBtn">
                <div class="dropdown-content">
                    <a href="#">Logout</a>
                </div>
            </div>
        </nav>

        <h1>Trips</h1>

        <div class="searchDiv">
            <input type="text" class="search-from" placeholder="From Where?">
            <input type="text" class="search-to" placeholder="Where To?">
            <input type="button" class="searchBtn" value="Search">
            <input type="button" class="addBtn" value="Add Trip">

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

        <div class="alterTrips">
            <input type="button" class="updateBtn" value="Update Trip">
            <input type="button" class="deleteBtn" value="Delete Trip">
        </div>
    </body>
</html>