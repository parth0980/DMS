<%-- 
    Document   : add_disease
    Created on : 26-Oct-2018, 12:16:55 PM
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
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
        table
        {
            margin-top: 90px;
            border: #cccccc thin solid;
        }
    </style>
    <body>
        <jsp:include page="admin_home.jsp"></jsp:include>
        <form action="add_disease_detail.jsp" method="post">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <table align="center"  cellspacing="5" cellpadding="10" class="table table-bordered table-striped">
                <tr>
                    <td colspan="2" align="center"><h1>Add Diesease</h1></td>
                </tr>
                <tr>
                    <td>Enter Disease</td>
                    <td><input type="text" name="dnm" class="form-control"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                <input type="submit" value="Add">
                    </td>
                </tr>
            </table>
                
            </div>
            <div class="col-lg-3"></div>
            
        </form>
           </body>
</html>

 
