<%-- 
    Document   : Fill_information
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
        <form action="#" name="register-form" method="POST" class="register-form">

<h4>Pesrsonal information</h4>

<label for="doctype" class="doctype">Document Type</label>


<label for="docid" required>Document ID</label>


<br><br>


<select name="doctype" id="doctype" class="select-doctype">
    <option value="doc_type">National ID</option>
    <option value="doc_type">PASSPORT</option>
</select>
<input type="text" id="docid" name="documentid" class="docid">

<br><br>

<label for="title">Title</label>
<label for="fname" class="fname">First Name</label>
<label for="lname" class="lname">Last Name</label>
<br><br>
<select name="title" id="title" class="select-title">
    <option value="title">Mr</option>
    <option value="title">Mrs</option>
    <option value="title">Miss</option>

</select>


<input type="text" id="fname" name="firstname" class="fname-input">


<input type="text" id="lname" name="lastname" class="lname-input"><br>

<br>



<br><br>

<h4>Contact information</h4>

<br><br>

<label for="phone">Mobile Number</label>
<label for="doctype" class="email">Email</label>

<br><br>

<input type="text" name="phone" placeholder="05XXXXXXXX" class="phone-input">

<input type="text" name="email" required class="email-input">


<p id="errorMsg"></p>


<input type="submit" value="Next" class="fill-submit">
        </form>
    </div>
                
                
                
            </div>

        </div>
    </div>
        
    </body>
</html>