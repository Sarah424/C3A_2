<%-- 
    Document   : createAccount
    Created on : Nov 6, 2022, 2:52:01 AM
    Author     : Sara
--%>

<%@page import="java.lang.System.console()"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
        <script>
function empty(){
    alert("hi");
}

function fnameError(){
    document.getElementById("errorMsg").innerHTML = "Haha";
}
</script>
    </head>
    <body>
        <%
           // String doctype = request.getParameter("id");
           // String title = request.getParameter("title");
            String fname = request.getParameter("first_name");
            if(fname == null){
                 %>
                <script>
                
                sara;
                empty();
              
                </script>
                 <%
            }
            String lname = request.getParameter("last_name");
            String email = request.getParameter("email");
            String id = request.getParameter("id");
            String password = request.getParameter("password");
            int ID = Integer.parseInt(id);
            String phone = request.getParameter("phone_number");
            int PHONE = Integer.parseInt(phone);
            Date dob = Date.valueOf(request.getParameter("birthday"));
            Database.DBConnector connection = new Database.DBConnector();
            int addToDB = connection.addUserInfo(ID, fname, lname,email,PHONE, password,dob);
            
            if (addToDB > 0) {
                //out.print("User Successfully added to database!");
console.log("User Successfully added to database!");
            } else {
               // out.print("User failed to be added to database!");
console.log("User failed to be added to database!");
            }
            

        %>
    </body>
</html>
