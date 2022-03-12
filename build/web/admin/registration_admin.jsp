<%-- 
    Document   : registration_admin
    Created on : 25-Oct-2018, 1:52:27 PM
    Author     : Nitin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="regi.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="add_registration_details.jsp" method="post">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter name" name="nm" required>
    
    <label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>
    <hr>

    <label for="psw-repeat"><b>Password</b></label>
    <input type="password" placeholder="Password" name="pwd1" required>
    <hr>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
      <p>Already have an account? <a href="login_admin.jsp">Sign in</a>.</p>
  </div>
  
</form>

    </body>
</html>
