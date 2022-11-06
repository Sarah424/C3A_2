<%-- 
    Document   : AddTrip
    Created on : Oct 25, 2022, 3:34:56 AM
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
        <title>JSP Page</title>
    </head>

    <body>

        <%
    if ( session.getAttribute("username") == null){
       response.sendRedirect("AdminLoginPage.jsp");
      } else {
      try {
      if (request.getParameter("error").equals("1")){
            
        %>
        <script>alert("an unexpected error occured. Please try again");</script>
        <%
}
        }catch(NullPointerException ex ){
        }
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

        <h1>Add New Trip</h1>

        <form action="AddTripInfo.jsp" method="POST" name="add-trip">

            <h3>Destination</h3>

            <div class="destination-from">
                <label for="city-from" class="city-from">From</label>
                <select name="city-from" id="city-from" required>
                    <option value="" disabled selected hidden>Select a City</option>
                    <option value="Jeddah">Jeddah</option>
                    <option value="Riyadh">Riyadh</option>
                </select>
            </div>

            <div class="destination-to">
                <label for="city-to">To</label>
                <select name="city-to" id="city-to" placeholder="Choose" required>
                    <option value="" disabled selected hidden>Select a City</option>
                    <option value="Jeddah">Jeddah</option>
                    <option value="Riyadh">Riyadh</option>
                </select>
            </div>

            <hr>

            <h3>Date & Time</h3>

            <div class="datediv">
                <label for="date">Date</label>
                <input type="date" id="date" name="date" class="date" required>
            </div>

            <label for="time" class="depTime">Departure Time</label>
            <div class="Dep-time">
                <input type="time" name="depTime" id="depTime" class="time" required>
            </div>

            <label for="time" class="arrTime">Arrival Time</label>
            <div class="arr-time">
                <input type="time" name="arrTime" id="arrTime" class="time" required>
            </div>

            <hr>

            <h3>Price</h3>

            <div class="price-economic">
                <label for="economic">Price</label>
                <input type="number" min="1" step="any" value=0 name="riyal" id="economic" class="economic" required/>
                .
                <input type="number" min="0" step="any" value=0 name="halal" class="economic" required/>

            </div>

            <hr>

            <h3>Gate</h3>

            <div class="gate">
                <label for="gate">Gate</label>
                <select name="gate" id="gate" required>
                    <option value="" disabled selected hidden>Select a Gate</option>
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                </select>
            </div>

            <br>
            <div class="btns">
                <input type="button" class="cancleBtn" value="Cancle" onclick="tripPage()">
                <input type="Submit" class="add-tripBtn" value="Submit">
            </div>
        </form>
        <script>
                    function tripPage() {
                        location.replace("TripPage.jsp")
                    }
        </script>
    </body>
</html>