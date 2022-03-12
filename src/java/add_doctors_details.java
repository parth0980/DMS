

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
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

@WebServlet("~/add_doctors_details")
@MultipartConfig(maxFileSize = 1024*1024*10)
public class add_doctors_details extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con=null; 
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int dide=Integer.parseInt(request.getParameter("disease"));
            String dnm=request.getParameter("nm");
             String quali=request.getParameter("qua");
              String cfee=request.getParameter("fee");
               String cntc=request.getParameter("num");
                String email=request.getParameter("mail");
                 String add=request.getParameter("addr");
                 int country=Integer.parseInt(request.getParameter("location"));
                 int st=Integer.parseInt(request.getParameter("state"));
                 int ct=Integer.parseInt(request.getParameter("city"));
                 
                 InputStream istr=null;
                 Part fp=request.getPart("img");
                 
                 String filename=fp.getSubmittedFileName();
                 String filetype=fp.getContentType();
                 double filesize=fp.getSize();
                 istr=fp.getInputStream(); //for blob
                 
                 String qr="insert into doctors (did,name,qualification,fees,contact,email,address,countryid,stateid,cityid,fname,ftype,fsize,fdata)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                 PreparedStatement ps=con.prepareStatement(qr);
                 ps.setInt(1, dide);
                 ps.setString(2, dnm);
                 ps.setString(3, quali);
                 ps.setString(4, cfee);
                 ps.setString(5, cntc);
                 ps.setString(6, email);
                 ps.setString(7, add);
                 ps.setInt(8, country);
                 ps.setInt(9, st);
                 ps.setInt(10, ct);
                 ps.setString(11, filename);
                 ps.setString(12, filetype);
                 ps.setDouble(13, filesize);
                 ps.setBlob(14, istr);
                 ps.executeUpdate();
                 response.sendRedirect("view_doctors.jsp");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(add_doctors_details.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

}
