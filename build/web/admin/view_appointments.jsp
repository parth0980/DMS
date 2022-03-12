<%-- 
    Document   : view_appointments
    Created on : 24-Nov-2018, 1:00:47 PM
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
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="dropdown.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <jsp:include page="admin_home.jsp"></jsp:include>
        
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <table class="table table-bordered table-hover table-striped">
                    <tr><h2 align="center">Appointments</h2></tr>
                    <tr>
                        <th>No</th>
                        <th>Doctor Name</th>
                        <th>Patient name</th>
                        <th>Disease</th>
                        <th>Contact</th>
                        <th>email</th>
                        <th>Massage</th>
                        <th>Reject</th>
                    </tr>
                    <%
                Connection conn=null;
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
                String qry="select add_disease.dname,doctors.id,doctors.name,appointment.pname,appointment.phone,appointment.email,appointment.msg from appointment "
                        + "inner join add_disease on add_disease.id=appointment.did "
                        + "inner join doctors on doctors.id=appointment.docid";
                PreparedStatement ps=conn.prepareStatement(qry);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("pname")%></td>
                        <td><%=rs.getString("dname")%></td>
                        <td><%=rs.getString("phone")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("msg")%></td>
                        <td ><a href="reject_appointment.jsp?i=<%=rs.getInt("id")%>" class="btn-danger" onclick="return confirm('are you sure you want to REJECT?');">Reject</a></td>
                    </tr>
                    
            
               <% }
                    %>
                    
                </table>
            </div>
            <div class="col-lg-2"></div>
    </body>
</html>
-