<%-- 
    Document   : enter_state_details
    Created on : 3-Nov-2018, 11:08:09 AM
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
            int cnid=Integer.parseInt(request.getParameter("country"));
            String state=request.getParameter("snm");
            String qr="select * from state where statename=?";
            PreparedStatement ps1=con.prepareStatement(qr);
            ps1.setString(1, state);
            ResultSet rs=ps1.executeQuery();
            if(rs.next())
            {
               rs.getString("statename");
            %>
            <script>
                alert("State name aready exist");
                window.location="enter_states.jsp";
            </script>
            <%
            }
            else
            {
            
            String q="insert into state (countryid,statename)values(?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, cnid);
            ps.setString(2, state);
            ps.executeUpdate();
            response.sendRedirect("view_states.jsp");
            } 
        %>
    </body>
</html>
