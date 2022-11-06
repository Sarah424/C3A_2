<%-- 
    Document   : UpdateTripInfo
    Created on : Nov 4, 2022, 6:28:26 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Database.TripController"%>
<%@ page import="Journey.Trip"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            if (session.getAttribute("username") == null){
             response.sendRedirect("AdminLoginPage.jsp");
            } else {
            Database.TripController tripController = new Database.TripController();
            Journey.Trip trip = new Journey.Trip();
            trip.setID(Integer.parseInt(request.getParameter("tripID")));
            ResultSet rs = tripController.getTripInfo(trip);
            rs.next();
            response.sendRedirect("UpdateTripPage.jsp?city-from=" + rs.getString("departure_station") + 
                    "&city-to=" + rs.getString("arrival_station") + "&date=" + rs.getDate("Date") +
                    "&depTime=" + rs.getString("departure_time") + "&arrTime=" + rs.getString("arrival_time") + 
                    "&gate="+ rs.getString("gate") + "&price=" + rs.getString("price") +
                    "&status=" + rs.getString("status") + "&tripID=" + trip.getID());
            }
        %>

    </body>
</html>
