<%-- 
    Document   : AdminLogout
    Created on : Nov 6, 2022, 2:31:51 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
             session.invalidate(); 
             response.sendRedirect("AdminLoginPage.jsp");
            }
        %>
    </body>
</html>
