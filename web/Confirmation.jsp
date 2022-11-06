<%-- 
    Document   : Confirmation
    Author     : bayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                <p> Your reservation has been confirmed! Thank you for choosing us.</p>
                <H5>Your ticket</H5>
            
                <% 
            String Arrival_time: = String.valueOf(session.getAttribute("a_time"));
            String Departure_time = String.valueOf(session.getAttribute("d_time"));
            String Duration = String.valueOf(session.getAttribute("Duration"));
            %>
            <br>
            <br>
            <p><%out.print("Arrival time:" Arrival_time );%></p>
            <br>
            <p><%out.print("Departure time:" Departure_time );%></p>
            <br>
            <p><%out.print("Duration:" Duration );%></p>
          

                <form method="post" action="homepage.jsp">
                    <input type="submit" name="Go to homepage" value="Go to homepage" 
                           style="width:160px; height:40px;
                           background-color:#1A374D;font-weight:bold;color:white;border-radius: 30px 30px 30px 30px;" >
                </form>
                
        
            </div>
            
        </div>
    </body>
</html>