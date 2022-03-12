<%-- 
    Document   : edit_country_details
    Created on : 3-Nov-2018, 9:53:09 AM
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
            String name=request.getParameter("nm");
            String q="update country set countryname='"+name+"' where id='"+ide+"'";
            PreparedStatement ps=con.prepareStatement(q);
            ps.executeUpdate();
            response.sendRedirect("view_countries.jsp");
        %>
    </body>
</html>
