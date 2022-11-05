<%-- 
    Document   : AddTripInfo
    Created on : Nov 4, 2022, 11:14:19 PM
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
            Database.TripController trip = new Database.TripController();
            int result = trip.addTrip(from, to, date, time, price, gate);
            if (result != 1){
               response.sendRedirect("AddTrip.jsp?error=1");
            } else {
                 response.sendRedirect("TripPage.jsp");
            }
            }catch(Exception e){
            }
        %>
    </body>
</html>
