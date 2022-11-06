<%-- 
    Document   : TripPage
    Created on : Oct 25, 2022, 12:30:48 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Database.TripController"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Trips</title>
    </head>

    <body>

        <%
               if (session.getAttribute("username") == null){
             response.sendRedirect("AdminLoginPage.jsp");
            }
        %>
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
                    <a href="AdminLogout.jsp">Logout</a>
                </div>
            </div>
        </nav>

        <h1>Trips</h1>

        <div class="searchDiv">
            <input type="text" class="search-from" placeholder="From Where?">
            <input type="text" class="search-to" placeholder="Where To?">
            <input type="button" class="searchBtn" value="Search">
            <input type="button" class="addBtn" value="Add Trip" onclick="addTripPage()">
        </div>

        <table class="departuresTable" id="table">
            <tr>
                <th>Trip ID</th>
                <th>From</th>
                <th>To</th>
                <th>Date</th>
                <th>Departures Time</th>
                <th>Arrival Time</th>     
                <th>Gate</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>
                    <% 
                                  Database.TripController trip = new Database.TripController();
                                  ResultSet rs = trip.getUpdatableTrips();
                                    while(rs.next()) {
                    %>
            <tr>
                <td class="id"><%= rs.getString("TripID") %> </td>
                <td><%= rs.getString("departure_station") %> </td>
                <td><%= rs.getString("arrival_station") %> </td>
                <td><%= rs.getString("Date") %> </td>
                <td><%= rs.getString("departure_time") %> </td>
                <td><%= rs.getString("arrival_time") %> </td>   
                <td><%= rs.getString("gate") %> </td>
                <td><%= rs.getString("status") %> </td>
            </tr>
            <% }
            %>
        </td>
    </tr>
</table>

<div class="alterTrips">
    <input type="button" class="updateBtn" value="Update Trip" onclick="updateTrip()">
    <input type="button" class="deleteBtn" value="Delete Trip" onclick="deleteTrip()">
</div>

<script>
    function highlight(e) {
        if (selected[0])
            selected[0].className = '';
        e.target.parentNode.className = 'selected';
    }

    var table = document.getElementById('table'),
            selected = table.getElementsByClassName('selected');
    table.onclick = highlight;

    var id;
    var trs = document.querySelectorAll("tr");
    for (var i = 0; i < trs.length; i++)
        (function (e) {
            trs[e].addEventListener("click", function () {
                id = this.getElementsByClassName('id')[0].innerHTML;
            }, false);
        })(i);

    function deleteTrip() {
        location.replace("DeleteTrip.jsp?tripID=" + id)
    }

    function addTripPage() {
        location.replace("AddTripPage.jsp")
    }

    function updateTrip() {
        location.replace("TripInfo.jsp?tripID=" + id)
    }

</script>

</body>
</html>