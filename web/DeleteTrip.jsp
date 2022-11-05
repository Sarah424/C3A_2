<%-- 
    Document   : DeleteTrip
    Created on : Nov 4, 2022, 5:12:38 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Database.TripController"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          int tripId = Integer.parseInt(request.getParameter("tripID"));
          Database.TripController trip = new Database.TripController();
          trip.deleteTrip(tripId);
          response.sendRedirect("TripPage.jsp");
        %>
    </body>
</html>
