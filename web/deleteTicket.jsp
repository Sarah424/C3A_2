<%-- 
    Document   : deleteTicket
    Created on : Nov 5, 2022, 12:45:14 PM
    Author     : atheer
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@page import="java.util.*"%>
<%@ page import="java.io.*" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        String ticketid=request.getParameter("ticket_id");
        int ticket_id=Integer.parseInt(ticketid);
        if(session.getAttribute("id") != null && session.getAttribute("trip_id") != null){ 
                
                        dbConn.database_conn  sql_Handler = new dbConn.database_conn();
                        boolean deleted = sql_Handler.deleteTicket( Integer.parseInt(session.getAttribute("id").toString()),ticket_id );
                        
                        response.sendRedirect("TicketHistory.jsp");  
            }
            else
                    out.print("not allowed here");
        
        %>
    </body>
</html>
