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
<script language="javascript">
    function deleteTicket(ticket_id){
        var f=document.form;
        f.method="post";
        f.action='deleteTicket.jsp?ticket_id='+ticket_id;
        f.submit();
}

function showTicket(trip_id){
        var f=document.form;
        f.method="post";
        f.action='showTicket.jsp?trip_id='+trip_id;
        f.submit();
}
</script>
</head>
<%
session.setAttribute("id", "11");
session.setAttribute("first_name", "ahmed");
session.setAttribute("last_name", "ali");
//session.getAttribute("id")
//String id= "1";
 if(session.getAttribute("id") != null ){
                   DB.user_conn sql_Handler = new DB.user_conn();// conn (folder_name.java_class_name) 
                    ResultSet rsltst = sql_Handler.getUserTicketHistory(Integer.parseInt(session.getAttribute("id").toString());//result obj (to get my method, my vars from db are stored in this obj)

%>
<body>
    <!-------------------------------------HEADER------------------------------------------->
    <div class="header">
        <div class="HeaderContainer">
            <img src="images/trainLogo.png" title="RailWay Logo" alt="logo" id="logo" />
            <p id="systemTitle">Railway Booking System</p>


            <p class="userWelcomeMsg">Welcome, <%= session.getAttribute("first_name").toString()%>  <%= session.getAttribute("last_name").toString()%></p>

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
            <button class="THback_btn" id="back_btn"><i class="material-icons">chevron_left</i><a href=HomePage.jsp'>back</a></p></button>
        </div>


        <div class="TicketHistoryCont">
            <div class="THLabel">
                <p>Ticket History</p>
            </div>
            <!------Ticket Info Table------>
            
            <div class="TableCont">
                
            <form method="post" name="form">
                <table class="TH_table">
                    <tr class="THT_header">
                        <th>Trip</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Options</th>
                    </tr>
                    <!--Ticket INFO------------------>
                    <%
                   
                    //get users booked tickets
                    while(rsltst.next()){
                    DB.user_conn sql_Handler2 = new DB.user_conn();
                    ResultSet rsl_tst = sql_Handler2.getTrip(rsltst.getInt("Trip_id"));
                    while(rsl_tst.next()){
                    %>
                    <tr class="THT_content">
                        <td id="trip"><%=rsl_tst.getString("Departure_station") %> to <%=rsl_tst.getString("Arrival_station") %></td>
                        <td id="date"><%=rsl_tst.getString("date") %></td>
                        <td id="time"><%=rsl_tst.getString("d_time") %> - <%=rsl_tst.getString("a_time") %> </td>
                        <td id="options" >
                           
                            
        <input type="button" name="show" value="show" style="width:100px; background-color:white;font-weight:bold;color:black;border-radius: 10px 10px 10px 10px;" onclick="showTicket(<%=rsltst.getString("Trip_id")%>);" >   
        <% if(rsl_tst.getString("status").toString().Equals("On_Time")){ %>
        <input type="button" name="cancel" value="cancel" style="width:100px; background-color:white;font-weight:bold;color:black;border-radius: 10px 10px 10px 10px;" onclick="deleteTicket(<%=rsltst.getString("id")%>);" >
        }%>                  
                        </td>
                    </tr>
                    
                    <!---------------------------------<<-->
                    <%       }
                }

                    %>
                </table>
                </form>
            </div>


        </div>

        <!--NAV BTNS-->

    </div>

</body>
<%
             rsltst.close();
                    }
                    else
                    out.print("not allowed here");
                    //show login page
                    %>
</html>


