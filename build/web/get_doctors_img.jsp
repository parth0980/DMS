<%-- 
    Document   : get_doctors_img
    Created on : 15-Nov-2018, 12:26:23 PM
    Author     : Nitin
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
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
    </head>
    <body>
        <%
             Connection con=null;
            try
            {
       
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root",""); 
            int ide=Integer.parseInt(request.getParameter("id1"));
            String q="select * from doctors where id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, ide);
            ResultSet rs=ps.executeQuery();
            
            if(rs.next())
            {
             Blob b=rs.getBlob("fdata");
             byte byteArray[]=b.getBytes(1, (int)b.length());
              response.setContentType("image/jpg");
              OutputStream os=response.getOutputStream();
              os.write(byteArray);
              os.flush();
              os.close();
            }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            finally
            {
                if(con!=null)
                {
                    try
                    {
                        con.close();
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </body>
</html>
