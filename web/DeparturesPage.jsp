<%-- 
    Document   : AdminMainPage
    Created on : Oct 24, 2022, 12:56:57 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Database.TripController"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Home Page</title>
    </head>

    <body>

        <%        
         
              if (session.getAttribute("username") == null){
             response.sendRedirect("AdminLoginPage.jsp");
            }
            
       // try {    
         //   String otp1 = (String) request.getParameter("first");
           // String otp2 = (String) request.getParameter("second");
          //  String otp3 = (String) request.getParameter("third");
          //  String otp4 = (String) request.getParameter("fourth");
          //  String otpText = otp1 + otp2 + otp3 + otp4;
          //  String otp = (String) session.getAttribute("OTP");
          //if (!otpText.equals(otp)) {
           //     response.sendRedirect("AdminOTP.jsp?error=1");
           // }
           // } catch(NullPointerException ex) {
           // }
            
        %>

        <nav class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="" class="project-name">Railway Booking System</a>
            </div>
            <div class="list">
                <ul>
                    <li> <a href="DeparturesPage.jsp" class="departures">Departures</a></li>
                    <li> <a href="TripPage.jsp">Trips</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <input type="image" name="profile" src="images/profile.png" width="35px" class="dropBtn">
                <div class="dropdown-content">
                    <a href="AdminLogout.jsp">Logout</a>
                </div>
            </div>
        </nav>

        <h1>Departures</h1>

        <div class="searchDiv">
            <input type="text" class="search-from" placeholder="From Where?">
            <input type="text" class="search-to" placeholder="Where To?">
            <input type="button" class="searchBtn" value="Search">
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
            <% 
                      Database.TripController trip = new Database.TripController();
                      ResultSet rs = trip.getTrips();
                        while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("TripID") %> </td>
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
</body>
</html>