
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


@WebServlet("~/update_homeopathy_code")
@MultipartConfig(maxFileSize = 1024*1024*10)
public class update_homeopathy_code extends HttpServlet {

    


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            
            PrintWriter out=response.getWriter();
            Connection con=null; 
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int i=Integer.parseInt(request.getParameter("ide"));
            
            int diseaseId=Integer.parseInt(request.getParameter("dnm"));
            String name=request.getParameter("hnm");
            String data=request.getParameter("hdt");
            
            InputStream istr=null;
            Part fpart=request.getPart("doc");
          
            String filename=fpart.getSubmittedFileName();
            String filetype=fpart.getContentType();
            double filesize=fpart.getSize();
            istr=fpart.getInputStream();
            out.println(istr);
            if(fpart.getSize()>0)
            {
                
                String qry="update homeopathy set did=?,hname=?,hdetails=?,fname=?,ftype=?,fsize=?,fdata=? where id=?";
                PreparedStatement ps=con.prepareStatement(qry);
                ps.setInt(1, diseaseId);
                ps.setString(2, name);
                ps.setString(3, data);
                ps.setString(4, fpart.getSubmittedFileName());
                ps.setString(5, fpart.getContentType());
                ps.setDouble(6, fpart.getSize());
                ps.setBlob(7, istr);
                ps.setInt(8, i);
                ps.executeUpdate();
                
                
                
                
                response.sendRedirect("view_homeopathy.jsp");
            }
            else
            {
                String q="update homeopathy set did=?,hname=?,hdetails=? where id=?";
                PreparedStatement p=con.prepareStatement(q);
                p.setInt(1, diseaseId);
                p.setString(2, name);
                p.setString(3, data);
                p.setInt(4,i);
                p.executeUpdate();
                response.sendRedirect("view_homeopathy.jsp");
                
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(update_homeopathy_code.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(update_homeopathy_code.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }

}
