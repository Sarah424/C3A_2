<%-- 
    Document   : payment
    Created on : Nov 3, 2022, 7:57:27 PM
    Author     : atheer
--%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,300" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="myStyle.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment Page</title>
    </head>
    <body>
        <!-------------------------------------HEADER------------------------------------------->
    <div class="header">
        <div class="HeaderContainer">
            <img src="images/trainLogo.png" title="RailWay Logo" alt="logo" id="logo" />
            <p style="text-align:left; padding-left:80px;">Railway Booking System</p>


            <p class="userWelcomeMsg">Welcome, <%= session.getAttribute("first_name").toString()%>  <%= session.getAttribute("last_name").toString()%></p>


        </div>

        <div class="side">

            <a href="profile.html" class="btn">
                <i class="material-icons" title="Profile">account_circle</i>
            </a>


        </div>
    </div>


    <%
        if(session.getAttribute("id")!=null){
            String id_=request.getParameter("trip_id");
            int tripID= Integer.parseInt(id_);
            session.setAttribute("trip_id", tripID);
            try {
                DB.user_conn sql_Handler = new DB.user_conn();
                ResultSet rsltst = sql_Handler.getTrip(tripID);
                while(rsltst.next()){
            %>
            
                <div class="bodyDiv">  
                    
                    <div class="THnav">
            <button class="THback_btn" id="back_btn"><i class="material-icons">chevron_left</i><a href='AvailableTrips.jsp'>back</a></p></button>
                    </div>
                    
                <div class="pay_Cont">
                <h5 class="pay_label">Trip Ticket information :</h5>    
                <div class="tripInfoPay">  
                Date:<span>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<%=""+rsltst.getString("date")%></span><br>
                Leaving Time:<span>&emsp;<%= "               "+rsltst.getString("departure_time")%></span><br>
                Arriving Time:<span>&emsp;<%= "              "+rsltst.getString("arrival_time")%></span><br>
                Gate number:<span>&emsp;<%="                 "+rsltst.getString("gate")%></span><br><br>
                Price:&emsp;&emsp;<%=" "+rsltst.getString("price")+" "%> SAR
                </div>
                <h5 class="pay_label">Enter your card information :</h5>
                
                
                <form method="post" action="payTicket.jsp?trip_id+<%=tripID%>">
                    <table class="pay_table">
                    <tr class="pay_header"> 
                    <th>Card Holder Name</td>
                    <th>Card Number</td>
                    <th>CCV</td> 
                    </tr>
                    <tr class="pay_content">
                    <td><input type="text" name="card_name"/> </td>
                    <td><input type="text" name="card_no"/>  </td>
                    <td><input type="text" name="card_ccv"/> </td>
                    <input type="hidden" name="trip_ID" value="<%=tripID%>"
                    
                    </tr>
                    
                    </table>
                    <input type="submit" name="pay" value="continue" style="margin-left:85%;margin-top:50px;width:160px; height:40px; background-color:white;font-weight:bold;color:black;border-radius: 30px 30px 30px 30px;" >
                    
                    </form>
                
                    <h1><%=session.getAttribute("id")%></h1>
                <h1><%=tripID%></h1>
                <%}
                    sql_Handler.close();

                    }
                catch(Exception e){}
}
else{out.print("unauthorised access");}
%>
                </div>
                </div>
                </body>
</html>
