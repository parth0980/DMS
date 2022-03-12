

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


@WebServlet("~/update_medicine_code")
@MultipartConfig(maxFileSize = 1024*1024*10)

public class update_medicine_code extends HttpServlet {

    
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        try {
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int i=Integer.parseInt(request.getParameter("ide"));
            
            int diseaseId=Integer.parseInt(request.getParameter("dnm"));
            String name=request.getParameter("mnm");
            String data=request.getParameter("mdt");
            
            InputStream istr=null;
            Part fpart=request.getPart("image");
          
            String filename=fpart.getSubmittedFileName();
            String filetype=fpart.getContentType();
            double filesize=fpart.getSize();
            istr=fpart.getInputStream();
            
         
            if(filesize==0)
            {
                
                String qr="update medicine set did=?,m_name=?,m_details=? where id=?";
                PreparedStatement p=con.prepareStatement(qr);
                p.setInt(1, diseaseId);
                p.setString(2, name);
                p.setString(3, data);
                p.setInt(4, i);
                p.executeUpdate();
                response.sendRedirect("view_medicine.jsp"); 
            }
            
            else
            {
            String qry="update medicine set did=?,m_name=?,m_details=?,fname=?,ftype=?,fsize=?,fdata=? where id=?";
            PreparedStatement ps=con.prepareStatement(qry);
            ps.setInt(1, diseaseId);
            ps.setString(2, name);
            ps.setString(3, data);
            ps.setString(4, filename);
            ps.setString(5, filetype);
            ps.setDouble(6, filesize);
            ps.setBlob(7, istr);
            ps.setInt(8,i);
            ps.executeUpdate();
            
            
       
           
            
            
            response.sendRedirect("view_medicine.jsp");  
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(update_medicine_code.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }


}
