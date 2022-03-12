<%-- 
    Document   : user_login
    Created on : 20-Nov-2018, 1:11:56 PM
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
            String uname=request.getParameter("mail");
            String pwd=request.getParameter("pwd");
            String qry="select * from register_user where email=? and pass=?";
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, uname);
            ps.setString(2, pwd);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
               if(uname.equals(rs.getString("email")) && pwd.equals(rs.getString("pass"))) 
               {
               session.setAttribute("user", rs.getString("fname"));
               response.sendRedirect("user_home.jsp");
               %>
               
               <%
               }
               else
               {
                 %>
                 <script>
                     alert("Incorrect Username or Password");
                 </script>
           <%
               }
            }
            %>
    </body>
</html>
