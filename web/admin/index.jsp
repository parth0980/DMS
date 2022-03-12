<%-- 
    Document   : login_admin.jsp
    Created on : 25-Oct-2018, 2:28:34 PM
    Author     : Nitin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="login_detail.jsp" method="post">
            <table align="center">
                <tr>
                    <h3 align="center">Login</h3>
                 </tr>
                 <tr>
                     <td>Email</td>
                     <td><input type="email"  name="mail"></td>
                 </tr>
                 <tr>
                     <td>Password</td>
                     <td><input type="password" name="pwd"></td>
                 </tr>
                 <tr>
                     <td><br><input type="submit" value="Login"></td>
                 </tr>
                 <tr>
            
                     <td><br><a href="registration_admin.jsp" >create a new account</a></td>
                     
                 </tr>
            </table>
        </form>
    </body>
</html>
