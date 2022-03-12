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

@WebServlet("~/add_medicine_details")
@MultipartConfig(maxFileSize = 1024*1024*10)
public class add_medicine_details extends HttpServlet {

  
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            
            Connection con=null;
           Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root",""); 
            
            int diseaseId=Integer.parseInt(request.getParameter("disease"));
            String name=request.getParameter("nm");
            String data=request.getParameter("detail");
            
            InputStream istr=null;
            Part fpart=request.getPart("image");
            
            String filename=fpart.getSubmittedFileName();
            String filetype=fpart.getContentType();
            double filesize=fpart.getSize();
            istr=fpart.getInputStream();

            String qry="insert into medicine (did,m_name,m_details,fname,ftype,fsize,fdata)values(?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(qry);
           ps.setInt(1, diseaseId);
            ps.setString(2, name);
            ps.setString(3, data);
            ps.setString(4, filename);
            ps.setString(5, filetype);
            ps.setDouble(6, filesize);
            ps.setBlob(7, istr);
            ps.executeUpdate();
            response.sendRedirect("view_medicine.jsp");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(add_medicine_details.class.getName()).log(Level.SEVERE, null, ex);
        }
          }

}
