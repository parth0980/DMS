<%-- 
    Document   : book_appointment
    Created on : 23-Nov-2018, 11:55:07 AM
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
       Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int did=Integer.parseInt(request.getParameter("disease"));
            int docid=Integer.parseInt(request.getParameter("doctor"));
            String pnm=request.getParameter("name");
            String ph=request.getParameter("phone");
            String mail=request.getParameter("email");
            String d=request.getParameter("dob");
            String ad=request.getParameter("adate");
            String m=request.getParameter("messege");
            String qr="insert into appointment(did,docid,pname,phone,email,dob,adate,msg)values(?,?,?,?,?,?,?,?)";
           PreparedStatement ps=conn.prepareStatement(qr);
           ps.setInt(1, did);
           ps.setInt(2, docid);
           ps.setString(3, pnm);
           ps.setString(4, ph);
           ps.setString(5, mail);
           ps.setString(6, d);
           ps.setString(7, ad);
           ps.setString(8, m);
           int z=ps.executeUpdate();
           
                %>
           <script>
               alert("Appointment has been sent\n\
                        You will recieve massage when confirmed.");
                       <%

           response.sendRedirect("user_home.jsp");
           
                 %>
                     </script>
    </body>
</html>
