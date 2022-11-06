<%-- 
    Document   : AddTripInfo
    Created on : Nov 4, 2022, 11:14:19 PM
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
 if ( session.getAttribute("username") == null){
       response.sendRedirect("AdminLoginPage.jsp");
      } else {          
try {
            String riyal = request.getParameter("riyal") ;
            String halal = "." +  request.getParameter("halal");
            double price = Double.parseDouble(riyal+halal);
            
            Journey.Trip trip = new Journey.Trip();
            trip.setDepartureStation(request.getParameter("city-from"));
            trip.setArrivalStation(request.getParameter("city-to"));
            trip.setArrivalTime(request.getParameter("arrTime"));
            trip.setDate(Date.valueOf(request.getParameter("date")));
            trip.setDepartureTime(request.getParameter("depTime"));
            trip.setGate(request.getParameter("gate"));
            trip.setPrice(price);
            trip.setStatus("On Time");
            
            Database.TripController tripController = new Database.TripController();
            int result = tripController.addTrip(trip);
            
            if (result != 1){
               response.sendRedirect("AddTripPage.jsp?error=1");
            } else {
        %>
        <script>alert("Trip Successfully Added")</script>
        <%
             response.sendRedirect("TripPage.jsp?success=1");
        }
        }catch(Exception e){
        }
}
        %>
    </body>
</html>
