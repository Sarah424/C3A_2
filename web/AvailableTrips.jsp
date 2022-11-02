<%-- 
    Document   : AvailableTrips
    Created on : Oct 30, 2022, 1:34:14 PM
    Author     : atheer
--%>

<%@page import="java.sql.ResultSet"%>
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
    <title>Available Trips</title>

</head>
<body>
    <!-------------------------------------HEADER------------------------------------------->
    <div class="header">
        <div class="HeaderContainer">
            <img src="images/trainLogo.png" title="RailWay Logo" alt="logo" id="logo" />
            <p id="systemTitle">Railway Booking System</p>


            <a href="#" class="signUpBtn">Register</a>

            <a href="#" class="loginBtn">Login</a>

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
    <div class="bodyDiv">

        
        <!--
        get the  paramaters of the trips the user wants
        search using getTrip() function from dbConn
        get the result set 
        show the resultset in while.hasNext loop 
        and show tripCont and info (html) in each loop(trip)
        set the bus/eco btns to the trip id
        ->
        <%
            //resultSet.getString("username")
        String from ="";
        String to="";
        String date ="";
        int seat_no=0;
        dbConn.database_conn sql_Handler = new dbConn.database_conn();
        ResultSet res_set = sql_Handler.getTrips( from,  to ,  date ,  seat_no);
        while(res_set.next()){
        %>
        <!---------------------Trip-->
        <div class="tripContainer">

            <!------From To------>
            <div class="tripWay">
                <p id="tripFrom">Jeddah</p>
                <i class="material-icons">arrow_forward</i>
                <p id="tripTo">Riyadh</p>
            </div>

            <!------Info Boxes------>
            <div class="tripInfo">
                <div class="infoBox">
                    <!--leaving time-->
                    <p class="infoMiniTitle">Leaving</p> <br />

                    <p id="l_time">10:05<%res_set.getString("time")%> </p>
                    <!--<p id="l_APM">AM</p>-->
                </div>
                <div class="infoBox">
                    <!--arriving time-->
                    <p class="infoMiniTitle">Arriving</p> <br />
                    <p id="a_time">10:05</p>
                    <p id="a_APM">AM</p>
                </div>
                <div class="infoBox">
                    <!--trip date-->
                    <p class="infoMiniTitle">Date</p><br />
                    <p id="Tdate">12 OCT 2022</p>
                </div>
                <div class="infoBox">
                    <!--trip price-->
                    <p class="infoMiniTitle">Price</p><br />
                    <p id="Tprice">120.99</p>
                    <p id="sar">SAR</p>
                </div>

            </div>

            <!------BOTTOM BTNS------>
            <div class="be_btns">

                <button class="be_button" id="${trip.getID()}">Business</button>
                <button class="be_button" id="<% %>">Economy</button>
            </div>


        </div>
        <!---------Trip END-------->        
        <%
            }
        %>
    
        <!--NAV BTNS-->
        <div class="navBtns">
            <button class="back_button" id="back_btn"><i class="material-icons">chevron_left</i>Back</p></button>
            <button class="next_button" id="next_btn">Choose Return Trip<i class="material-icons">chevron_right</i></button>
        </div>
    </div>

</body>
</html>


