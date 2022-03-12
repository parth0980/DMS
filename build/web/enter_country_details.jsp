<%-- 
    Document   : enter_country_details
    Created on : 3-Nov-2018, 9:24:56 AM
    Author     : Nitin
--%>

<%@page import="java.sql.ResultSet"%>
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
            String name=request.getParameter("nm");
            String qr="select * from country where countryname=?";
            PreparedStatement ps1=con.prepareStatement(qr);
            ps1.setString(1, name);
            ResultSet rs=ps1.executeQuery();
            if(rs.next())
            {
               rs.getString("countryname");
            %>
            <script>
                alert("Country name aready exist");
                window.location="enter_country.jsp";
            </script>
            <%
            }
            else
            {
               String q="insert into country (countryname)values(?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, name);
            ps.executeUpdate();
            response.sendRedirect("view_countries.jsp");
            }
        %>
    </body>
</html>
