<%-- 
    Document   : edit_symptoms_code
    Created on : 29-Oct-2018, 1:22:53 PM
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
        
            int dide=Integer.parseInt(request.getParameter("did"));
            String sym=request.getParameter("symp");
            String qry="update symptoms_details set did=?,symptoms_details=? where id='"+dide+"'";
           PreparedStatement ps1=con.prepareStatement(qry);
           ps1.setInt(1,dide);
           ps1.setString(2, sym);
           ps1.executeUpdate();
           response.sendRedirect("view_symptoms.jsp");
        %>    
    </body>
</html>
