<%-- 
    Document   : resendEmail
    Created on : Nov 2, 2022, 1:44:53 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Account.Admin"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%  
             if (session.getAttribute("username") == null && session.getAttribute("password") == null){
             response.sendRedirect("AdminLoginPage.jsp");
            } else {
            try {
            String adminUsername = (String) session.getAttribute("username");
            if (adminUsername != null ){
                    Database.SignupController loginControl = new Database.SignupController();
                  //  String otp = loginControl.sendOTP(loginControl.getAdminEmail(adminUsername)) + "";
                 //   session.setAttribute("OTP", otp);
                 //   response.sendRedirect("AdminOTP.jsp");
            }
            } catch(NullPointerException ex){
            }
            }
        %>

    </body>
</html>
