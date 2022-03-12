<%-- 
    Document   : forgot_pwd
    Created on : 28-Nov-2018, 12:33:00 PM
    Author     : Nitin
--%>

<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.messageDestinationLinkType"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
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
        String mail=request.getParameter("email");
         Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            String qry="select * from register_user where email='"+mail+"'";
            PreparedStatement ps=con.prepareStatement(qry);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
            String a=rs.getString("pass");
            
            final String from="bhavin.kpatel9@gmail.com";
            final String pwd="beingclassy";
            final String msg=String.valueOf(a);
            
            String host="smtp.gmail.com";
            String subject="Your Login Password is";
             
            Properties prop=new Properties();
            
           prop.put("mail.smtp.host", host);
           prop.put("mail.transport.protocol","smtp");
           prop.put("mail.smtp.auth", "true");
           prop.put("mail.smtp.starttls.enable", "true");
           prop.put("mail.user",from);
           prop.put("mail.password",pwd);
           prop.put("mail.port","587");
           
          Session ss=Session.getInstance(prop, new javax.mail.Authenticator(){
              
              @Override
              protected PasswordAuthentication getPasswordAuthentication(){
              return new PasswordAuthentication(from, pwd);
              }
          });
           
           try
           {
           MimeMessage mess=new MimeMessage(ss);
           mess.setFrom(new InternetAddress(from));
           mess.addRecipient(Message.RecipientType.TO, new InternetAddress(mail));
           mess.setSubject(subject);
           mess.setText(msg);
           Transport.send(mess);
           
           }
           catch(Exception e)
           {
           out.print(e);
           }
          
          
            }
        response.sendRedirect("index.jsp");
        %>        
    </body>
</html>
