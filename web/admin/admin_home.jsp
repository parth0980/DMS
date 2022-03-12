<%-- 
    Document   : admin_home
    Created on : 25-Oct-2018, 11:14:42 AM
    Author     : Nitin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <%
            String nm=(String)session.getAttribute("user");
            if(nm==null)
            {
           response.sendRedirect("index.jsp"); 
            }
            
            %>
        <div class="row">
           <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="admin_home.jsp">Health Solution</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Disease <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_disease.jsp">Add Disease</a></li>
            <li><a href="view_disease.jsp">Edit Disease</a></li>
            <li><a href="view_disease.jsp">View Disease</a></li>
        </ul>
      </li>
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Symptoms <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="add_symptoms.jsp">Add Symptoms</a></li>
            <li><a href="view_symptoms.jsp">Edit Symptoms</a></li>
            <li><a href="view_symptoms.jsp">View Symptoms</a></li>
        </ul>
      </li>
      
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Remedies <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="../view_medicine.jsp">Allopathy(Medical)</a></li>
            <li><a href="../view_homeopathy.jsp">Homeopathy</a></li>
          
        </ul>
      </li>
      
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Doctors <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="../add_doctors.jsp">Add Doctors</a></li>
            <li><a href="../view_doctors.jsp">Edit Doctors</a></li>
            <li><a href="../view_doctors.jsp">View Doctors</a></li>
          <li><a href="../view_countries.jsp">Add Countries</a></li>
          <li><a href="../view_states.jsp">Add States</a></li>
          <li><a href="../view_city.jsp">Add Cities</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" >Appointments <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="view_appointments.jsp">View Appointments</a></li>
                    
        </ul>
      </li>
      
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><%=nm %> <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="logout_admin.jsp">Logout</a></li>
          
        </ul>
      </li>
       
    </ul>
  </div>
</nav>
</div>
    </body>
</html>