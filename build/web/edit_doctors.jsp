<%-- 
    Document   : edit_doctors
    Created on : 16-Nov-2018, 10:51:29 AM
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
        
        
        <!--for cuurent page, begins -->

        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <form action="edit_doctors_details" method="post" enctype="multipart/form-data">
            <table align="center" class="table table-hover table-bordered table-striped">
               <%
                 
                Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root",""); 
            int id=Integer.parseInt(request.getParameter("i"));
            String q="select * from doctors where id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, id);
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
               %> 
                <tr>
                    <td>Name</td>
                <input type="hidden" value="<%=rs.getInt("id")%>" name="ide" >
                    <td><input type="text" value="<%=rs.getString("name")%>" name="nm" class="form-control"></td>
                </tr>
                <tr>
                    <td>Qualification</td>
                    <td><input type="text" value="<%=rs.getString("qualification")%>" name="qua" class="form-control"></td>
                </tr>
                <tr>
                    <td>Consult Fees</td>
                    <td><input type="text" value="<%=rs.getString("fees")%>" name="fee" class="form-control"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text" value="<%=rs.getString("contact")%>" name="cntc" class="form-control"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" value="<%=rs.getString("email")%>" name="email" class="form-control"></td>
                </tr>
                <tr>
                    
                    <td><img src="get_doctors_img.jsp?id1=<%=rs.getInt("id")%>" height="80" width="80">If you want change,Browse here---></td>
                    <td><input type="file" name="image" class="form-control"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Change" class=" btn btn-primary">
                    </td>
                </tr>
                <% }
                %>
            </table>
            </form>
        </div>
        <div class="col-lg-1"></div>
    </body>
</html>
