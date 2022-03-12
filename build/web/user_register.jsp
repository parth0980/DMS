<%-- 
    Document   : user_register
    Created on : 20-Nov-2018, 12:56:57 PM
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
    </head>
    <body>
       <% 
           Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            String fn=request.getParameter("fname");
            String ln=request.getParameter("lname");
            String mail=request.getParameter("uname");
            String ps=request.getParameter("pwd");
            String qry="insert into register_user (fname,lname,email,pass)values(?,?,?,?)";
            PreparedStatement ps1=con.prepareStatement(qry);
            ps1.setString(1, fn);
            ps1.setString(2, ln);
            ps1.setString(3, mail);
            ps1.setString(4, ps);
            ps1.executeUpdate();
            response.sendRedirect("index.jsp");
         %>
    </body>
</html>
