page language="java"%>
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


            <p class="userWelcomeMsg">Welcome,</p>

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
            <button class="THback_btn" id="back_btn"><i class="material-icons">chevron_left</i><a href='TicketHistory.jsp'>back</a></p></button>
                    </div>
                    
                <div class="pay_Cont">
                <h5 class="pay_label">Trip Ticket information :</h5>    
                <div class="tripInfoPay">  
                Date:<span>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<%=""+rsltst.getString("date")%></span><br>
                Leaving Time:<span>&emsp;<%= "               "+rsltst.getString("departure_time")%></span><br>
                Arriving Time:<span>&emsp;<%= "              "+rsltst.getString("arrival_time")%></span><br>
                Gate number:<span>&emsp;<%="                 "+rsltst.getString("gate")%></span><br><br>
                Price:&emsp;&emsp;<span><%=" "+rsltst.getString("price")+" "%></span>SAR
                </div>
                   
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
