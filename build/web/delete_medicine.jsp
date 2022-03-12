<%-- 
    Document   : delete_medicine
    Created on : 31-Oct-2018, 2:49:56 PM
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
          int ide=Integer.parseInt(request.getParameter("i"));
           String qry="delete from medicine where id='"+ide+"'";
         PreparedStatement ps1=con.prepareStatement(qry);
           ps1.executeUpdate();
           {
           response.sendRedirect("view_medicine.jsp");
           }
        %>
    </body>
</html>
