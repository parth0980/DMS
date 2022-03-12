<%-- 
    Document   : editcode
    Created on : 26-Oct-2018, 2:59:56 PM
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
           String nam=request.getParameter("dnm");
          int ide=Integer.parseInt(request.getParameter("id"));
           String qry="update add_disease set dname=? where id='"+ide+"'";
         PreparedStatement ps1=con.prepareStatement(qry);
           ps1.setString(1, nam);
           ps1.executeUpdate();
           {
           response.sendRedirect("view_disease.jsp");
           }
        %>
    </body>
</html>
