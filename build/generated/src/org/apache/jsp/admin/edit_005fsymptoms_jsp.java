package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class edit_005fsymptoms_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"dropdown.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin_home.jsp", out, false);
      out.write("\n");
      out.write("         <form action=\"edit_symptoms_code.jsp\" method=\"post\">\n");
      out.write("            <div class=\"col-lg-3\"></div>\n");
      out.write("            <div class=\"col-lg-6\">\n");
      out.write("               <table  align=\"center\"  class=\"table table-hover table-bordered\">\n");
      out.write("                <tr> <h3 align=\"center\">Edit Symptoms</h3></tr>\n");
      out.write("               <tr>\n");
      out.write("                    <td>Disease</td>\n");
      out.write("                    <td>\n");
      out.write("                <select name=\"dnm\" class=\"form-control\">\n");
      out.write("                    <option selected=\"selected\">---select Disease---</option>\n");
      out.write("                  ");

            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
           String q="select * from add_disease";
           PreparedStatement ps=con.prepareStatement(q);
           ResultSet rs=ps.executeQuery();
           while(rs.next())   
           { 
           
      out.write("\n");
      out.write("           <option value=\"");
      out.print(rs.getInt("id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("dname"));
      out.write("</option>\n");
      out.write("          ");
 }
           
      out.write("\n");
      out.write("                </select>\n");
      out.write("                    </td>\n");
      out.write("               </tr>\n");
      out.write("                \n");
      out.write("               <tr>\n");
      out.write("                    <td>Edit Symptoms</td>\n");
      out.write("                    ");
 
                        int ide=Integer.parseInt(request.getParameter("i"));
                        String qr="select * from symptoms_details where id=?";
                        PreparedStatement ps1=con.prepareStatement(qr);
                        ps1.setInt(1, ide);
                         ResultSet rs1=ps1.executeQuery();
           if(rs1.next())   
           { 
           
      out.write("\n");
      out.write("           <td><input type=\"hidden\" value=\"");
      out.print(rs1.getInt("id"));
      out.write("\" name=\"did\">\n");
      out.write("               <input type=\"text\" value=\"");
      out.print(rs1.getString("symptoms_details"));
      out.write("\" name=\"symp\" class=\"form-control\"></td>\n");
      out.write("                    ");

                    }
                    
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><input type=\"submit\" value=\"Change\" class=\"btn-info\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table> \n");
      out.write("            </div>\n");
      out.write("             <div class=\"col-lg-3\"></div>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
