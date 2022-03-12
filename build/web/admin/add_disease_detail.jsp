
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
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
            PrintWriter t=response.getWriter();
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String nam=request.getParameter("dnm");
           String q="select * from add_disease where dname=?";
           PreparedStatement ps=con.prepareStatement(q);
           ps.setString(1, nam);
           ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
           rs.getString("dname");
          %>
           <script>
                   alert("Disease already exist!!!");
                   window.location="add_disease.jsp";
               </script>
               <%
           }
        else
           {
        String qry="insert into add_disease(dname)values(?)";
           PreparedStatement ps1=con.prepareStatement(qry);
           ps1.setString(1,nam);
           ps1.executeUpdate();
           response.sendRedirect("view_disease.jsp");
           }
        %>
    </body>
</html>
