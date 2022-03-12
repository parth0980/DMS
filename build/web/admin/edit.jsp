<%-- 
    Document   : edit
    Created on : 26-Oct-2018, 2:16:51 PM
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
    </head>
     
    <body>
        <jsp:include page="admin_home.jsp"></jsp:include>
         <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <form action="editcode.jsp" method="post">
            <table class="table table-bordered table-hover" align="center"  cellspacing="7" cellpadding="5">
                <tr>
                    <td colspan="2" align="center"><h3>Edit Diesease</h3></td>
                </tr>
                <br>
                <br>
            <%
            PrintWriter t=response.getWriter();
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int ide=Integer.parseInt(request.getParameter("i"));
           String q="select * from add_disease where id=?";
           PreparedStatement ps=con.prepareStatement(q);
           ps.setInt(1, ide);
           ResultSet rs=ps.executeQuery();
           if(rs.next())
           {
            %>
                <tr>
                    <th>Edit Disease</td>
                    <td><input type="text" value="<%=rs.getString("dname")%>" name="dnm" class="form-control"></td>
                </tr>
                <br>
                <tr>
                <input type="hidden" value="<%=rs.getInt("id")%>" name="id">
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Change" class=" btn btn-info ">
                    </td>
                </tr>
                <%
                    }
                    %>
            </table>
        </form>
        
            </div>
            <div class="col-lg-2"></div>
           </body>
</html>
