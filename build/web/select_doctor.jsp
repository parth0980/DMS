<%-- 
    Document   : select_doctor
    Created on : 23-Nov-2018, 11:05:07 AM
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
             int doctorID=Integer.parseInt(request.getParameter("b"));
             String query="select * from doctors where did='"+doctorID+"'";
             PreparedStatement ps1=con.prepareStatement(query);
           ResultSet rs1=ps1.executeQuery();
           while(rs1.next())   
           { 
           %>
           <option value="<%=rs1.getInt("id")%>"><%=rs1.getString("name")%></option>
          <% }
           %>  
    </body>
</html>
