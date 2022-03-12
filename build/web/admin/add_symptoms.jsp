<%-- 
    Document   : add_symptoms
    Created on : 27-Oct-2018, 12:37:29 PM
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
        <form action="add_symptoms_details.jsp" method="post">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
               <table  align="center"  class="table table-hover table-bordered">
                <tr> <h3 align="center">Symptoms Details</h3></tr>
                <tr>
                    <td>Disease List</td>
                    <td>
                <select name="dnm" class="form-control">
                    <option selected="selected">---select Disease---</option>
                  <%
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String q="select * from add_disease";
           PreparedStatement ps=con.prepareStatement(q);
           ResultSet rs=ps.executeQuery();
           while(rs.next())   
           { 
           %>
           <option value="<%=rs.getInt("id")%>"><%=rs.getString("dname")%></option>
          <% }
           %>
                </select>
                    </td>
                </tr>
                
                <tr>
                    <td>Add Symptoms</td>   
                    <td><input type="text" name="symp" class="form-control"></td>
                </tr>
                <tr>  
                    <td colspan="2" align="center"><input type="submit" value="Add" class="btn-info"></td>
                </tr>
            </table> 
            </div>
             <div class="col-lg-3"></div>
            
        </form>
    </body>
</html>

