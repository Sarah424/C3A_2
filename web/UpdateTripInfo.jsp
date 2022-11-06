<%-- 
    Document   : UpdateTripInfo
    Created on : Nov 4, 2022, 7:35:44 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Journey.TripController"%>
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
            trip.setStatus(request.getParameter("status"));
            trip.setID(Integer.parseInt(request.getParameter("tripID")));
            trip.setAdminId((Integer) session.getAttribute("adminID"));

            Journey.TripController tripController = new Journey.TripController();           
             int result = tripController.updateTrip(trip);
            if (result != 1){
               response.sendRedirect("UdpateTripPage.jsp?error=1");
          } else {
             response.sendRedirect("TripPage.jsp?success=2");
            }
            }catch(Exception e){
            }    
            }
        %>

    </body>
</html>
