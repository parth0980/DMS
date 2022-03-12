<%-- 
    Document   : update_homeopathy
    Created on : 1-Nov-2018, 2:41:05 PM
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
    </body>  
</html>


<!-- for current page -->


<div class="col-lg-1"></div>
<div class="col-lg-10">
    <form action="update_homeopathy_code" method="post" enctype="multipart/form-data">    
    <table align="center" class="table table-hover table-bordered table-striped">
        <tr> <h3 align="center">Edit Homeopathy(Medicine) Details</h3></tr>
               <tr>
                    <td>Disease</td>
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
                
                   <% 
                        Connection conn=null;
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
                       int ide=Integer.parseInt(request.getParameter("i"));
                       String qry="select * from homeopathy where id=?";
                         PreparedStatement ps1=con.prepareStatement(qry);
                         ps1.setInt(1, ide);
                         ResultSet rs1=ps1.executeQuery();
                         if(rs1.next())
                         { %>
                         <tr><td>Name</td>
                                <input type="hidden" value="<%=rs1.getInt("id")%>" name="ide" >
                             <td><input type="text" name="hnm" value="<%=rs1.getString("hname")%>" class="form-control"></td>
                         </tr>
                         <tr><td>Medicine Details</td>
                             <td><input type="text" name="hdt" value="<%=rs1.getString("hdetails")%>" class="form-control"></td>
                         </tr>
                         <tr>
                             <td><b>Current Uploaded file</b><br>
                                <%=rs1.getString("fname")%></td>
                             <td> <input type="file" name="doc" class="form-control" >Want to change?<b>Choose new file</b></td>
                         </tr>
                         <tr>
                             <td colspan="2"> <input type="submit" value="Change" class="form-control btn-primary"></td>
                         </tr>
                         
                         <% }
                    %>  
        
    </table> 
 </form>

</div>
<div class="col-lg-1"></div>

   
</html>
