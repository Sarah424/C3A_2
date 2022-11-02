<%-- 
    Document   : TicketHistory
    Created on : Oct 30, 2022, 1:36:27 PM
    Author     : atheer
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,300" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="myStyle.css">
    <title>Ticket History</title>

</head>
<%
session.setAttribute("id", "2");
//session.getAttribute("id")
//String id= "1";
 if(session.getAttribute("id") != null ){
                    dbConn.database_conn sql_Handler = new dbConn.database_conn();// conn (folder_name.java_class_name) 
                    ResultSet rsltst = sql_Handler.getUserTicketHistory(session.getAttribute("id").toString());//result obj (to get my method, my vars from db are stored in this obj)

%>
<body>
    <!-------------------------------------HEADER------------------------------------------->
    <div class="header">
        <div class="HeaderContainer">
            <img src="images/trainLogo.png" title="RailWay Logo" alt="logo" id="logo" />
            <p id="systemTitle">Railway Booking System</p>


            <p class="userWelcomeMsg">Welcome, Mr X</p>

        </div>

        <div class="side">

            <a href="profile.html" class="btn">
                <i class="material-icons" title="Profile">account_circle</i>
            </a>

            <!--<a href="#" type="button" class="btn" onclick="logout();">
                <i class="material-icons" title="تسجيل الخروج">power_settings_new</i>
            </a>-->

        </div>
    </div>


    <!-------------------------------Page Components-------------------------------->
    <div class="THbodyDiv">


        <div class="THnav">
            <button class="THback_btn" id="back_btn"><i class="material-icons">chevron_left</i>Back</p></button>
        </div>


        <div class="TicketHistoryCont">
            <div class="THLabel">
                <p>Ticket History</p>
            </div>
            <!------Ticket Info Table------>
            <div class="TableCont">
                <table class="TH_table">
                    <tr class="THT_header">
                        <th>Trip</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Options</th>
                    </tr>
                    <!--Ticket INFOOOO------------------>
                    <%
                   
                    //get users booked tickets
                    while(rsltst.next()){
                    %>
                    <tr class="THT_content">
                        <td id="trip">from : <%=rsltst.getString("Departure_station") %>, to : <%=rsltst.getString("Arrival_station") %></td>
                        <td id="date"><%=rsltst.getString("date") %></td>
                        <td id="time"><%=rsltst.getString("time") %></td>
                        <td id="options">
                            <p>Btns/href here!!</p>
                            <!--two a href-->
                        </td>
                    </tr>
                    <%
                    }
                    rsltst.close();
                    }
                    else
                    out.print("not allowed here");
                    //show login page
                    %>
                    <!---------------------------------<<-->
                    
                </table>
            </div>


        </div>

        <!--NAV BTNS-->

    </div>

</body>
</html>


