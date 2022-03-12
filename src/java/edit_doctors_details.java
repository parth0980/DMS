/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("~/edit_doctors_details")
@MultipartConfig(maxFileSize = 1024*1024*10)
public class edit_doctors_details extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con=null; 
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            
            int id=Integer.parseInt(request.getParameter("ide"));
            String name=request.getParameter("nm");
            String quali=request.getParameter("qua");
            String f=request.getParameter("fee");
            String num=request.getParameter("cntc");
            String mail=request.getParameter("email");
            
            InputStream istr=null;
            Part fp=request.getPart("image");
            
             String filename=fp.getSubmittedFileName();
            String filetype=fp.getContentType();
            double filesize=fp.getSize();
            istr=fp.getInputStream();
            
            if(filesize > 0)
            {
            String qry="update doctors set name=?,qualification=?,fees=?,contact=?,email=?,fname=?,ftype=?,fsize=?,fdata=? where id='"+id+"'";
                PreparedStatement ps=con.prepareStatement(qry);
                ps.setString(1, name);
                ps.setString(2, quali);
                 ps.setString(3, f);
                ps.setString(4, num);
                 ps.setString(5, mail);
                 ps.setString(6, filename);
                ps.setString(7, filetype);
                 ps.setDouble(8, filesize);
                ps.setBlob(9, istr);
                ps.executeUpdate();
            }
            else
            {
            String qry="update doctors set name=?,qualification=?,fees=?,contact=?,email=? where id='"+id+"'";
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setString(1, name);
                ps.setString(2, quali);
                 ps.setString(3, f);
                ps.setString(4, num);
                 ps.setString(5, mail);
                  ps.executeUpdate();
            }
            
            response.sendRedirect("view_doctors.jsp");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(edit_doctors_details.class.getName()).log(Level.SEVERE, null, ex);
        }
            
      
        
    }

   
}
