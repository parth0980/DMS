

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class file_download extends HttpServlet {

    
   

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            int ide=Integer.parseInt(request.getParameter("i"));
            String q="select * from homeopathy where id=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1, ide);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
            String name=rs.getString("fname");
            String type=rs.getString("ftype");
            double size=rs.getDouble("fsize");
            Blob b=rs.getBlob("fdata");
            
                InputStream istr=b.getBinaryStream();
                int filelength=istr.available();
                
                ServletContext context=getServletContext();
                
                
                //set mime type for the file download
                
                String mimetype=context.getMimeType(name);
                if(mimetype == null)
                {
                mimetype = "application/octet-stream";
                }
                
                response.setContentType(mimetype);
                response.setContentLength(filelength);
                String headerKey="Content-Disposition";
                String headervalue=String.format("attachment; fname\"%s\"", name);
                response.setHeader(headerKey, headervalue);
                
                //write file to the client
                
                OutputStream os=response.getOutputStream();
                
                byte[] buffer=new byte[4096];
                int bytesread = -1;
                
                while((bytesread = istr.read(buffer))!= -1){
                   os.write(buffer,0,bytesread);  
                }
                istr.close();
                os.close();
            }
            else
            {
            response.getWriter().print("file not found for tht id:");
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(file_download.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
         }
}
