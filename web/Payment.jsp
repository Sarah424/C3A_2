<%-- 
    Document   : Payment
    Author     : bayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fill information Page</title>
        <link rel="stylesheet" href="UserStyleSheet.css">
    </head>
    <body>
              
        
    <div style="width: 100%; display: table;">
        <div style="display: table-row; height: 100px; " >
            <div class="div-left">
                
             <nav class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="System Logo" width="50" height="50">
                <a href="HomePage.jsp" class="project-name">Railway Booking System</a>
            </div>
                 
        </nav>   
                
                
                 <div class="register-div">
        <form action="#" name="Booking-form" method="POST" class="Booking-form">



            <br><br>           
<h4>Card information</h4>

<label for="CardName" class="CardName">Card Number</label>
<label for="CVV" class="CVV">CVV</label>

<br><br>


<input type="text" id="CardNumber" name="Card Number" class="CardNum-input">


<input type="text" id="CVV" name="CVV" class="CVV-input"><br>

<br><br>
<br>

<label for="CardName" class="CardName">Name on card</label>




<br><br>

<input type="text" id="CardNumber" name="CardName" class="CardNum-input">




<p id="errorMsg"></p>


<input type="submit" value="Next" class="fill-submit">
        </form>
    </div>
                
          
                
                
            </div>
            <div class="div-summary"> 
                <h2 style="font-weight: normal; color:#000a0f;">Booking Summary</h2><br>
                <p>Till</p>
                <p>To</p>
                <p>Duration:</p>
                <p>Date:</p>
                <p>Seats:</p>
                <p>total price:</p>
                <br><br>
                <br>
                <button class="ConfirmBtn" onclick="window.location.href='Confirmation.jsp';">Confirm</button>
                <button class="ConfirmBtn" onclick="window.location.href='HomePage.jsp';">Cancel</button>
            </div>
        </div>
    </div>
        
    </body>
</html>
