<%-- 
    Document   : Register
    Created on : Nov 2, 2022, 9:58:04 PM
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="UserStyleSheet.css">
        <script>
            //  function myFunction() {
            //var x = document.getElementById("id").value;
            // var xint = Integer.parseInt(x);
            // if( !xint.match([0-9]) || xint ==="0000"){
            // document.getElementById("errorMsg").innerHTML = "kaka";
            // return false;
            //}
            //else{
            //document.getElementById("errorMsg").innerHTML = "Hi";
            // return true;}
            //}
            function Validate() {
                var fname = document.getElementById("first_name").value;
                var lname = document.getElementById("last_name").value;
                var id = document.getElementById("id").value;
                var email = document.getElementById("email").value;
                var password = document.getElementById("password").value;
                var birthday = document.getElementById("birthday").value;
                var phone = document.getElementById("phone_number").value;

                var namesReg = "^[a-zA-Z]*$";
                var idReg = "\\d{10}";
                var emailReg = "^(.+)@(.+)$";
                var phoneReg = "(?:\\+?0*?966)?0?5[0-9]{8}";

                // Conditions
                if (fname != '' && lname != '' && id != '' && email != '' && password != '' && birthday != '' && phone != '') {
                    if (id.match(idReg)) {
                        if (fname.match(namesReg) && fname.length <= 25 && fname.length >= 2) {
                            if (lname.match(namesReg) && lname.length <= 25 && lname.length >= 2) {
                                if (password.length <= 15 && password.length >= 12) {
                                    if (phone.match(phoneReg)) {
                                        if (email.match(emailReg)) {
                                            alert("Successful Registeration " + fname + " !");
                                            return true;
                                        } else {
                                            document.getElementById("errorMsg").innerHTML = "&#9888;&#160;You must enter a valid email! Example: mail@mail.com.";
                                            return false;
                                        }
                                    } else {
                                        document.getElementById("errorMsg").innerHTML = "&#9888;&#160;Your phone number must be 10 digits! Example: 05xxxxxxxx";
                                        return false;
                                    }
                                } else {
                                    document.getElementById("errorMsg").innerHTML = "&#9888;&#160;Your password must be at least 12 and at most 15 digits!";
                                    return false;
                                }
                            } else {
                                document.getElementById("errorMsg").innerHTML = "&#9888;&#160;Your last name must be 2-25 letters only!";
                                return false;
                            }
                        } else {
                            document.getElementById("errorMsg").innerHTML = "&#9888;&#160;Your first name must be 2-25 letters only!";
                            return false;
                        }
                    } else {
                        document.getElementById("errorMsg").innerHTML = "&#9888;&#160;Your id must be 10 digits long!";
                        return false;
                    }
                } else {
                    alert("All fields are required!");
                    document.getElementById("errorMsg").innerHTML = "&#9888;&#160;All fields are required!";
                    return false;
                }
            }
        </script>
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
                        <form action="#" name="register-form" method="POST" class="register-form" onsubmit="return Validate()" >
                            <h1>Create Account</h1>
                            <label for="doctype" class="doctype">Document Type</label>


                            <label for="id" required>Document ID</label>


                            <br><br>


                            <select name="doctype" id="doctype" class="select-doctype">
                                <option value="doc_type">National ID</option>
                                <option value="doc_type">PASSPORT</option>
                            </select>
                            <input type="text" id="id" name="id" class="docid" required>

                            <br><br>

                            <label for="title">Title</label>
                            <label for="first_name" class="fname">First Name</label>
                            <label for="last_name" class="lname">Last Name</label>
                            <br><br>
                            <select name="title" id="title" class="select-title">
                                <option value="title">Mr</option>
                                <option value="title">Mrs</option>
                                <option value="title">Miss</option>

                            </select>


                            <input type="text" id="first_name" name="first_name" class="fname-input" required>


                            <input type="text" id="last_name" name="last_name" class="lname-input" required><br>

                            <br>


                            <label for="birthday" class="birthday">Date of Birth</label>

                            <label for="password" class="password">Password</label>
                            <br><br>

                            <input type="date" name="birthday" id ="birthday"
                                   placeholder="mm/dd/yyyy" value=""
                                   min="1900-01-01" max="2030-12-31" class="dob-input" required>

                            <input type="password" name="password" id= "password" required class="password-input">

                            <br><br>

                            <label for="phone_number">Mobile Number</label>
                            <label for="email" class="email">Email</label>

                            <br><br>

                            <input type="text" id= "phone_number" name="phone_number" placeholder="05XXXXXXXX" class="phone-input" required>

                            <input type="text" name="email" id="email" required class="email-input">
                            <p class="under-email">This email will be used for sending OTP for logins</p>
                            <p id="errorMsg"></p>



                            <input type="submit" value="Register" class="register-submit">
                        </form>
                    </div>



                </div>
                <div class="div-right"> 
                    <h1 style="color:white;">Already have an account?</h1>
                    <h2 style="font-weight: normal; color:#B1D0E0;">Click below to login</h2><br>
                    <button class="registerBtn" onclick="window.location.href = 'UserLoginPage.jsp';">Login</button>
                </div>
            </div>
        </div>

    </body>
</html>
