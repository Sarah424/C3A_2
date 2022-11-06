<%-- 
    Document   : DeleteTrip
    Created on : Nov 4, 2022, 5:12:38 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Journey.TripController"%>
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
             if (session.getAttribute("username") == null && session.getAttribute("password") == null){
                     response.sendRedirect("AdminLoginPage.jsp");
             } else {
                    Journey.Trip trip = new Journey.Trip();
                    trip.setID(Integer.parseInt(request.getParameter("tripID")));
                    Journey.TripController tripController = new Journey.TripController();
                   int result = tripController.deleteTrip(trip);
                   if (result == -1 ) {
                   response.sendRedirect("TripPage.jsp?error=1");
            } else {
            response.sendRedirect("TripPage.jsp?success=3");
            }
            }
        %>
    </body>
</html>
