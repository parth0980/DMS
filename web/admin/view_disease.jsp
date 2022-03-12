<%-- 
    Document   : view_disease
    Created on : 26-Oct-2018, 1:16:38 PM
    Author     : Nitin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="login.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
        table th
        {
            text-align: center;
            text-transform: uppercase;
            background-color: #ccffcc;
        }
    </style>
    <body>
        <jsp:include page="admin_home.jsp"></jsp:include>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
             
            <table class="table table-striped table-hover table-bordered">
            <tr>
                <th>No</th>
                <th>Disease name</th>
                <th>Edit</th>
            </tr>
            <%
             PrintWriter t=response.getWriter();
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String q="select * from add_disease";
           PreparedStatement ps=con.prepareStatement(q);
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
            %>
            
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("dname")%></td>
                <td align="center"><a class="btn btn-info" href="edit.jsp?i=<%=rs.getInt("id")%>" rel="">Edit</a>
                    <a class="btn btn-danger" href="delete_disease.jsp?i=<%=rs.getInt("id")%>" rel="">Delete</a>
                </td>
            </tr>
            <%
                }
                %>
            </table>
        
 
            </div>
            <div class="col-lg-3"></div>
        </div>
        </body>
</html>
