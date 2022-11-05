<%-- 
    Document   : successPayment
    Created on : Nov 4, 2022, 11:55:44 PM
    Author     : atheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,300" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="myStyle.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="bodyDiv">
            <div class="sucMsg">
                <p> Payment Success</p>
                <H5>you can view your ticket in the ticket history</H5>
                <br>
                <form method="post" action="homepage.jsp">
                    <input type="submit" name="ok" value="OK" 
                           style="width:160px; height:40px;
                           background-color:#1A374D;font-weight:bold;color:white;border-radius: 30px 30px 30px 30px;" >
                </form>
                
        <% session.setAttribute("trip_id","");
        session.invalidate();%>
            </div>
            
        </div>
    </body>
</html>
