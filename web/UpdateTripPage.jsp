<%-- 
    Document   : UpdateTrip
    Created on : Oct 25, 2022, 3:41:43 AM
    Author     : Sara_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="AdminStyleSheet.css">
    </head>

    <body>
        <%
if (session.getAttribute("OTP") == null || session.getAttribute("username") == null){
response.sendRedirect("AdminLoginPage.jsp");
} else {
try {
if (request.getParameter("error").equals("1")){
        %>
        <script>alert("an unexpected error occured. Please try again");</script>
        <%
}
        }catch(NullPointerException ex ){
        }
}
        %>

        <nav class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="" class="project-name">Railway Booking System</a>
            </div>
            <div class="list">
                <ul>
                    <li> <a href="DeparturesPage.jsp">Departures</a></li>
                    <li> <a href="TripPage.jsp" class="trips">Trips</a></li>
                </ul>
            </div>
            <div class="dropdown">
                <input type="image" name="profile" src="images/profile.png" width="35px" class="dropBtn">
                <div class="dropdown-content">
                    <a href="#">Logout</a>
                </div>
            </div>
        </nav>

        <h1>Update Trip Information</h1>

        <form action="UpdateTripInfo.jsp" method="GET" name="update-trip">

            <h3>Destination</h3>

            <div class="destination-from">
                <label for="city-from" class="city-from">From</label>
                <select name="city-from" id="city-from">
                    <option value="" disabled selected hidden>Select a City</option>
                    <option value="Jeddah">Jeddah</option>
                    <option value="Riyadh">Riyadh</option>
                    <option value="Abha">Abha</option>
                    <option value="Dammam">Dammam</option>
                    <option value="Jizan">Jizan</option>
                    <option value="Khobar">Khobar</option>
                    <option value="Medina">Medina</option>
                </select>
            </div>

            <div class="destination-to">
                <label for="city-to">To</label>
                <select name="city-to" placeholder="Choose" id="city-to">
                    <option value="" disabled selected hidden>Select a City</option>
                    <option value="Jeddah">Jeddah</option>
                    <option value="Riyadh">Riyadh</option>
                    <option value="Abha">Abha</option>
                    <option value="Dammam">Dammam</option>
                    <option value="Jizan">Jizan</option>
                    <option value="Khobar">Khobar</option>
                    <option value="Medina">Medina</option>
                </select>
            </div>

            <hr>

            <h3>Date & Time</h3>

            <div class="datediv">
                <label for="date">Date</label>
                <input type="date" name="date" class="date" id="date">
            </div>

            <div class="timediv">
                <label for="time">Time</label>
                <input type="time" name="time" class="time" id="time">
            </div>

            <hr>

            <h3>Price</h3>

            <div class="price-economic">
                <label for="economic">Price</label>
                <input type="number" min="1" step="any"  class="economic" name="riyal" id="riyal"/>
                .
                <input type="number" min="0" step="any" class="economic" name="halal" id="halal"/>

            </div>

            <hr>

            <h3>Gate</h3>

            <div class="gate">
                <label for="gate">Gate</label>
                <select name="gate" id="gate" name="gate">
                    <option value="" disabled selected hidden>Select a Gate</option>
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                </select>
            </div>

            <br>
            <div class="btns">
                <input type="button" class="cancleBtn" value="Cancle" onclick="tripPage()">
                <input type="Submit" class="update-tripBtn" value="Update" ">
            </div>
            <input type="hidden" id="tripID" name="tripID"/>
        </form>
        <script>
            var url = new URL(window.location.href);

            var price = url.searchParams.get("price");
            var riyal = price.substring(0, price.indexOf("."));
            var halal = price.substring(price.indexOf(".") + 1, price.length);
            document.getElementById("city-from").value = url.searchParams.get("city-from");
            document.getElementById("city-to").value = url.searchParams.get("city-to");
            document.getElementById("date").value = url.searchParams.get("date");
            document.getElementById("time").value = url.searchParams.get("time");
            document.getElementById("gate").value = url.searchParams.get("gate");
            document.getElementById("riyal").value = parseInt(riyal);
            document.getElementById("halal").value = parseInt(halal);
            document.getElementById("tripID").value = url.searchParams.get("tripID");

            function tripPage() {
                location.replace("TripPage.jsp");
            }

            function updateTripInfo() {
                location.replace("UpdateTripInfo.jsp");
            }
        </script>
    </body>
</html>