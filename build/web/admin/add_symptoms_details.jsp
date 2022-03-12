<%-- 
    Document   : add_symptoms_details
    Created on : 29-Oct-2018, 11:24:53 AM
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
            int dide=Integer.parseInt(request.getParameter("dnm"));
            String sym=request.getParameter("symp");
            String qry="insert into symptoms_details(did,symptoms_details)values(?,?)";
           PreparedStatement ps1=con.prepareStatement(qry);
           ps1.setInt(1,dide);
           ps1.setString(2, sym);
           ps1.executeUpdate();
           response.sendRedirect("view_symptoms.jsp");
        %>    
    </body>
</html>
