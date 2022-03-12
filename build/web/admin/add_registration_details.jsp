<%-- 
    Document   : add_registration_details
    Created on : 25-Oct-2018, 2:25:28 PM
    Author     : Nitin
--%>

<%@page import="java.io.PrintWriter"%>
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
           PrintWriter o=response.getWriter();
           
      Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String nam=request.getParameter("nm");
           String mail=request.getParameter("email");
           String pw=request.getParameter("pwd1");
           
           String q="select * from register_admin where uname=?";
           PreparedStatement ps1=con.prepareStatement(q);
           ps1.setString(1,mail);
           ResultSet rs1=ps1.executeQuery();
           if(rs1.next())
           {
           rs1.getString("uname");
           %>
           <script>
               alert("Email already exist, Try with Different Id");
               window.location="registration_admin.jsp";
           </script>
           <%
           }
           else
            {
           String qry="insert into register_admin(name,uname,pass)values(?,?,?)";
           PreparedStatement ps=con.prepareStatement(qry);
           ps.setString(1,nam);
           ps.setString(2, mail);
           ps.setString(3, pw);
           ps.executeUpdate();
           response.sendRedirect("login_admin.jsp");
            }
  %>
    </body>
</html>
