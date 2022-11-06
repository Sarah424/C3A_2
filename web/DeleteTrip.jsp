<%-- 
    Document   : DeleteTrip
    Created on : Nov 4, 2022, 5:12:38 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Database.TripController"%>
<%@ page import="java.sql.*" %>
<%@ page import="Journey.Trip"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             if ( session.getAttribute("username") == null){
                     response.sendRedirect("AdminLoginPage.jsp");
             } else {
                    Journey.Trip trip = new Journey.Trip();
                    trip.setID(Integer.parseInt(request.getParameter("tripID")));
                    Database.TripController tripController = new Database.TripController();
                    tripController.deleteTrip(trip  );
                    response.sendRedirect("TripPage.jsp");
            }
        %>
    </body>
</html>
