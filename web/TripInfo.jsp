<%-- 
    Document   : UpdateTripInfo
    Created on : Nov 4, 2022, 6:28:26 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Database.TripController"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        
            Database.TripController trip = new Database.TripController();
            String tripId = request.getParameter("tripID");
            ResultSet rs = trip.getTripInfo(Integer.parseInt(tripId));
            rs.next();
            response.sendRedirect("UpdateTripPage.jsp?city-from=" + rs.getString("departure_station") + 
                    "&city-to=" + rs.getString("arrival_station") + "&date=" + rs.getDate("Date") +
                    "&time=" + rs.getString("time") + "&gate="+ rs.getString("gate") + 
                    "&price=" + rs.getString("price") + "&tripID=" + tripId);
        %>

    </body>
</html>
