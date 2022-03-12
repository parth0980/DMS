<%-- 
    Document   : view_countries
    Created on : 3-Nov-2018, 9:30:56 AM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String nm=(String)session.getAttribute("user");
            if(nm==null)
            {
           response.sendRedirect("admin/index.jsp"); 
            }
            
            %>
        <div class="row">
           <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="admin/admin_home.jsp">Health Solution</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Disease <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="admin/add_disease.jsp">Add Disease</a></li>
            <li><a href="admin/view_disease.jsp">Edit Disease</a></li>
            <li><a href="admin/view_disease.jsp">View Disease</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Symptoms <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="admin/add_symptoms.jsp">Add Symptoms</a></li>
            <li><a href="admin/view_symptoms.jsp">Edit Symptoms</a></li>
            <li><a href="admin/view_symptoms.jsp">View Symptoms</a></li>
        </ul>
      </li>
      
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Remedies <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="view_medicine.jsp">Allopathy(Medical)</a></li>
            <li><a href="view_homeopathy.jsp">Homeopathy</a></li>
          
        </ul>
      </li>
      
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Doctors <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_doctors.jsp">Add Doctors</a></li>
          <li><a href="view_doctors.jsp">Edit Doctors</a></li>
          <li><a href="view_doctors.jsp">View Doctors</a></li>
          <li><a href="view_countries.jsp">Add Countries</a></li>
          <li><a href="view_states.jsp">Add States</a></li>
          <li><a href="view_city.jsp">Add Cities</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Appointments <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="view_appointments.jsp">View Appointments</a></li>
            
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><%=nm %> <span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="admin/logout_admin.jsp">Logout</a></li>
        </ul>
      </li>
       
    </ul>
  </div>
</nav>
</div>   
        
        
        <!-- for current page-->
        
        
        
        
         <div class="col-lg-3"></div>
         <div class="col-lg-6">
           <table align="center" class="table table-hover table-bordered table-striped">
            <tr>
            <a href="enter_country.jsp" colspan="3" class="btn btn-primary  form-control"> ADD NEW COUNTRIES </a>
                 <br>
                 <br>
               </tr>
            <tr>
                <th>No</th>
                <th>Country name</th>
                <th>Edit</th>
            </tr>
            
             <%
                Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root",""); 
            String q="select * from country";
            PreparedStatement ps=con.prepareStatement(q);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
             %>
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("countryname")%></td>
                <td align="center">
                    <a  href="edit_countries.jsp?i=<%=rs.getInt("id")%>" rel="" class="btn btn-info">Edit</a>
                    <a  href="delete_country.jsp?i=<%=rs.getInt("id")%>" onclick="return confirm('are you sure to delete?');" rel="" class="btn btn-danger">Delete</a>
                </td>
            </tr>
               
            <%  
             }  
            %>
               
           </table>  
             
             
             
         </div>
         <div class="col-lg-3"></div>
    </body>
</html>
