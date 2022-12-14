<%-- 
    Document   : AdminOTP
    Created on : Oct 26, 2022, 12:10:57 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Account.Admin"%>
<%@ page import="Account.SignupController"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
        <title>Otp</title>
    </head>

    <body class="LoginBody">

        <%
      try {
      if (request.getParameter("error").equals("1")){
        %>
        <script>alert("OTP is not valid");</script>
        <%
            }
         }catch(NullPointerException ex ){
        }


        String username ="", password = "";
        Account.SignupController loginControl = new Account.SignupController();

            try {
                 Account.Admin admin = new Account.Admin();
                 admin.setUsername(request.getParameter("username"));
                 admin.setPassword(request.getParameter("password"));
                 username = admin.getUsername();
                 password = admin.getPassword();

         if (username == null || password == null){
              response.sendRedirect("AdminLoginPage.jsp?");
            }

       if (username.matches("[a-zA-Z.]+")) {
            String sub = username.substring(0, 2);
            if (sub.indexOf(".") != 1) {
              response.sendRedirect("AdminLoginPage.jsp?error=1");
            }
        }

        try {
        if (!loginControl.isAdmin(admin)) {
            response.sendRedirect("AdminLoginPage.jsp?error=2");
        } else if (!loginControl.isValidAdmin(admin)) {
            response.sendRedirect("AdminLoginPage.jsp?error=3");
        }
                admin.setId(loginControl.getAdminId(admin));
                session.setAttribute("adminID", admin.getId());
                session.setAttribute("username", username);
                session.setAttribute("password", password);
              //  String otp = loginControl.sendOTP(loginControl.getAdminEmail(admin)) + "";
              //  session.setAttribute("OTP", otp);
                response.sendRedirect("DeparturesPage.jsp");
            } catch(IllegalStateException ex ){
            }
        }catch(NullPointerException ex ){
        }
        %>


        <span>
            <img src="images/background.png" alt="background image" class="background">
        </span>

        <img class="logoLogin" src="images/logo.png" alt="System Logo" width="130" height="130">
        <h1 class="systemName">Railway Booking Administration System</h1>


        <p class="email">Please enter the verification code sent to your E-mail</p>

        <form name="otp" action="DeparturesPage.jsp" method="POST">

            <div class="otp">
                <input name = "first" class="first" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input name = "second"  class="second" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input name = "third"  class="third" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
                <input name = "fourth"  class="fourth" type="text" maxlength="1" oninput="this.value=this.value.replace(/[^0-9]/g,'');" />
            </div>

            <p class="otpMsg">Didn???t receive an OTP?</p>

            <a href="resendEmail.jsp" class="otpResend">Resend OTP?</a>

            <input type="submit" name="submit" value="Submit" class="submitBtn">
        </form>
    </body>

</html>