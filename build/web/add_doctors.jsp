<%-- 
    Document   : add_doctors
    Created on : 2-Nov-2018, 2:48:17 PM
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
        
        <script>
            function showstate() 
            {
                var c=$(".country").val();  
                $.ajax({
                    method: "post",
                    url:"stateselection.jsp", //url for select state query page
                    data:"q="+c, //id
                    catch:false,
                    success:function(response)
                    {
                        $(".state").html(response)
                    }
                });
            }
             function showcity() 
            {
                var s=$(".state").val();  
                $.ajax({
                    method: "post",
                    url:"cityselection.jsp", //url for select city query page
                    data:"b="+s, //id
                    catch:false,
                    success:function(response)
                    {
                        $(".city").html(response)
                    }
                });
            }
        </script>
        <form action="add_doctors_details" method="post" enctype="multipart/form-data">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
               <table  align="center"  class="table table-hover table-bordered table-striped">
                <tr> <h3 align="center">Add Doctors</h3></tr>
                
                <tr>
                    <td>Select Disease</td>   
                    <td>
                        <select name="disease" class="form-control dropdown">
                            <option selected="selected">---select disease---</option>
                          
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
                    <td>Name</td>   
                    <td><input type="text" name="nm" class="form-control"></td>
                </tr>

                <tr>
                    <td>Qualifications</td>   
                    <td><input type="text" name="qua" class="form-control"></td>
                </tr>
                <tr>
                    <td>Consulting Fee</td>   
                    <td><input type="text" name="fee" class="form-control"></td>
                </tr>
                <tr>
                    <td>Contact</td>   
                    <td><input type="text" name="num" class="form-control"></td>
                </tr>
                <tr>
                    <td>Email</td>   
                    <td><input type="text" name="mail" class="form-control"></td>
                </tr>
                <tr>
                    <td>Address</td>   
                    <td><input type="text" name="addr" class="form-control"></td>
                </tr>
                
                <tr><td>Country</td>
                    <td>
                        <select  name="location" class="form-control dropdown country" onchange="showstate(this.value)">
                    <option selected="selected">---Select Country---</option>
                           <%
            Connection conn=null;
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String qr="select * from country";
           PreparedStatement ps1=con.prepareStatement(qr);
           ResultSet rs1=ps1.executeQuery();
           while(rs1.next())   
           { 
           %>
           <option value="<%=rs1.getInt("id")%>"><%=rs1.getString("countryname")%></option>
          <% }
           %>  
    
                </select>
                    </td>
                </tr>
                
                <tr>
                    <td>State</td>
                    <td><select name="state" class="form-control state" onchange="showcity(this.value)">
                                <option value="none">---select state---</option>
                        </select>
                     </td>
                </tr>
                
                 <tr>
                    <td>City</td>
                    <td><select name="city" class="form-control city">
                                <option value="none">---select City---</option>
                        </select>
                     </td>
                </tr>

                
                <tr>
                    <td>Image</td>   
                    <td colspan="2"><input type="file" name="img" class="form-control">
                </tr>
                <tr>  
                    <td colspan="2" align="center"><input type="submit" value="Add Doctor" class="btn-primary"></td>
                </tr>
            </table>
           
            </div>
           <div class="col-lg-3"></div>
          
        </form>
    </body>
</html>

        
  
    </body>
</html>
