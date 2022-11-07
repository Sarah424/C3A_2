<%-- 
    Document   : payTicket
    Created on : Nov 4, 2022, 10:34:15 PM
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
        <title>payment Page</title>
    </head>
    <body>
        <div class="bodyDiv">
         <%
            if(session.getAttribute("id") != null && session.getAttribute("trip_id") != null){ 
                String card_no= request.getParameter("card_no"); 
                String card_holder= request.getParameter("card_name").trim();
                String ccv= request.getParameter("card_ccv"); 
                //String user_id = request.getParameter("user_ID");
                int trip_id=Integer.parseInt(request.getParameter("trip_ID")); 
                    if(!card_holder.isEmpty() && !ccv.isEmpty() && !card_no.isEmpty())
                    {
                    boolean cradValid = card.cardValidation.isCard(card_no);
                    boolean ccvValid = card.cardValidation.isCCV(ccv); 
                    boolean nameValid = card.cardValidation.isName(card_holder);
                        if( cradValid && ccvValid && nameValid ){
                        DB.user_conn  sql_Handler = new DB.user_conn();
                        int booked = sql_Handler.bookTicket((int)(session.getAttribute("id")), trip_id);//////
                            if(booked>0) {//out.print("success , trip : "+trip_id+" , user : "+session.getAttribute("id").toString());
                            response.sendRedirect("successPayment.jsp");
                            }
                            else{out.print("error!!");}
                            sql_Handler.close();
                            }
                        else{
                        %>
         
                        <script>
                            alert("invalid card information ,write the information corrcetly please..");
                        </script>
                        <%
                        //out.print("invalid card information ,write the information corrcetly please..");
                       //response.sendRedirect("payment.jsp?trip_id="+ (session.getAttribute("trip_id").toString()));
                            }
                    }
                    else{
                    //out.print("Empty field! \n <a href='payment.jsp'> back </a>");
                            %>
                            <script>
                            alert("please fill the empty fields.");
                        </script>
                        <%
                    //response.sendRedirect("payment.jsp?trip_id="+ (session.getAttribute("trip_id").toString())); 
                    }
            }
            else  {
                out.print("you are not authorised ");response.sendRedirect("AvailableTrips.jsp");
            }
            

 
            
           %>
           <div>
    </body>
</html>
