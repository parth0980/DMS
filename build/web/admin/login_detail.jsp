<%-- 
    Document   : login_detail.jsp
    Created on : 25-Oct-2018, 2:54:48 PM
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
           String mail=request.getParameter("mail");
           String pw=request.getParameter("pwd");
           String q="select * from register_admin where uname=?";
           PreparedStatement ps=con.prepareStatement(q);
           ps.setString(1, mail);
           ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
               if(mail.equals(rs.getString("uname"))&&(pw.equals(rs.getString("pass"))))
               {
               session.setAttribute("user", rs.getString("name"));
                response.sendRedirect("admin_home.jsp");
               }
               else
               {%>
               <script>
                   alert("Login Failed!!!");
                   window.location="login_admin.jsp";
               </script>
              <%
               }
           }        
           %>
            
    </body>
</html>
