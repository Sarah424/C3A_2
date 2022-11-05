<%-- 
    Document   : AvailableTrips
    Created on : Oct 30, 2022, 1:34:14 PM
    Author     : atheer
--%>

<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*" %>
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
    <script language="javascript">
    function chooseRecord(id){
        var f=document.form;
        f.method="post";
        f.action='payment.jsp?trip_id='+id;
        f.submit();
}
</script>
</head>
        <%
        //resultSet.getString("username")
        session.setAttribute("id", 11);
        
        //get trip attribue to search
        String from ="jeddah";
        String to="riyadh";
        int trip_to_reserve=0;
        String trip_to_reserve_S = String.valueOf(trip_to_reserve);
        
        dbConn.database_conn sql_Handler = new dbConn.database_conn();
        ResultSet res_set = sql_Handler.getTrips(from,to);
        %>
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
    <div class="AT_Cont">
    <form method="post" name="form">
    <table class="AT_table">
        <tr class="AT_header">
            <th>Date</th>
            <th>Leaving</th>
            <th>Arriving</th>
            <th>Gate</th>
            <th>Price</th>
            <th></th>
        </tr>
        
        <%while(res_set.next()){%>
        <tr class="AT_content">
        <td><%=res_set.getString("date")%></td>
        <td><%=res_set.getString("d_time")%></td>
        <td><%=res_set.getString("a_time")%></td>
        <td><%=res_set.getString("gate")%></td>
        <td><%=res_set.getInt("Price")%> SAR</td>
        <td><input type="button" name="Select" value="Select" style="width:100px; background-color:white;font-weight:bold;color:black;border-radius: 10px 10px 10px 10px;" onclick="chooseRecord(<%=res_set.getString(1)%>);" ></td>
        </tr>
        <%
        }
        %>
    </table> 
    </form>
    </div> 
    
    
        <!--NAV BTNS-->
        <div class="navBtns">
            <button class="back_button" id="back_btn" ><i class="material-icons">chevron_left</i><a href="">Back</a></p></button>
        </div>
    
    </div>     
        
</body>
</html>
 <% 
            sql_Handler.close();
        %>


