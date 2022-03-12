<%-- 
    Document   : view_symptoms
    Created on : 29-Oct-2018, 11:38:18 AM
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
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">        
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="admin_home.jsp"></jsp:include>
       
    <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <table align="center" class="table table-hover table-bordered table-striped">
            
            <tr>
                <th>No</th>
                <th>Disease name</th>
                <th>Symptoms Name</th>
                <th>Edit</th>
            </tr>
            <%
             PrintWriter t=response.getWriter();
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            String q="select add_disease.dname,symptoms_details.id,symptoms_details.symptoms_details from symptoms_details inner join add_disease on symptoms_details.did=add_disease.id";
           PreparedStatement ps=con.prepareStatement(q);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("dname")%></td>
                <td><%=rs.getString("symptoms_details")%></td>
                <td align="center">
                    <a  href="edit_symptoms.jsp?i=<%=rs.getInt("id")%>" rel="" class="btn btn-info">Edit</a>
                    <a  href="delete_symptoms.jsp?i=<%=rs.getInt("id")%>" rel="" class="btn btn-danger">Delete</a>
                </td>
            </tr>
               
            <%  
             }  
            %>
                </table>
 
            </div>
            <div class="col-lg-2"></div>
        </div>    
    </body>
</html>
<!--String q="select add_disease.dname,symptoms_details.id,symptoms_details.symptoms_details from symptoms_details inner join add_disease on symptoms_details.did=add_disease.id";-->