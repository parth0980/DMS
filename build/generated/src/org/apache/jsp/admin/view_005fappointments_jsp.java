package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class view_005fappointments_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "admin_home.jsp", out, false);
      out.write("\n");
      out.write("        \n");
      out.write("            <div class=\"col-lg-2\"></div>\n");
      out.write("            <div class=\"col-lg-8\">\n");
      out.write("                <table class=\"table table-bordered table-hover\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>No</th>\n");
      out.write("                        <th>Doctor Name</th>\n");
      out.write("                        <th>Patient name</th>\n");
      out.write("                        <th>Disease</th>\n");
      out.write("                        <th>Contact</th>\n");
      out.write("                        <th>email</th>\n");
      out.write("                        <th>Massage</th>\n");
      out.write("                        <th>Reject</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                Connection conn=null;
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
                String qry="select add_disease.dname,doctors.id,doctors.name,appointment.pname,appointment.phone,appointment.email,appointment.msg from appointment "
                        + "inner join add_disease on add_disease.id=appointment.did "
                        + "inner join doctors on doctors.id=appointment.docid";
                PreparedStatement ps=conn.prepareStatement(qry);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print(rs.getInt("id"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("pname"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("dname"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("phone"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(rs.getString("msg"));
      out.write("</td>\n");
      out.write("                        <td ><a href=\"reject_appointment.jsp?i=");
      out.print(rs.getInt("id"));
      out.write("\" class=\"btn-danger\" onclick=\"return confirm('are you sure you want to REJECT?');\">Reject</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("            \n");
      out.write("               ");
 }
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-lg-2\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("-");
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
