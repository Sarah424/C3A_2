<%-- 
    Document   : UpdateTripInfo
    Created on : Nov 4, 2022, 7:35:44 AM
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
           
  try {
          String from = request.getParameter("city-from");
            String to = request.getParameter("city-to");
            Date date = Date.valueOf(request.getParameter("date"));
            String time = request.getParameter("time");
            String riyal = request.getParameter("riyal") ;
            String halal = "." +  request.getParameter("halal");
            double price = Double.parseDouble(riyal+halal);
            String gate = request.getParameter("gate");
            int tripId = Integer.parseInt(request.getParameter("tripID"));
            Database.TripController trip = new Database.TripController();           
             int result = trip.updateTrip(tripId, price, gate, from, to, date, time, "on time");
            if (result != 1){
               response.sendRedirect("UdpateTripPage.jsp?error=1");
          } else {
                 response.sendRedirect("TripPage.jsp");
            }
            }catch(Exception e){
            }            
        %>

    </body>
</html>
