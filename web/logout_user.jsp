<%-- 
    Document   : logout_user
    Created on : 22-Nov-2018, 3:06:54 PM
    Author     : Nitin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       session.invalidate();
       response.sendRedirect("index.jsp");
       %>
    </body>
</html>
