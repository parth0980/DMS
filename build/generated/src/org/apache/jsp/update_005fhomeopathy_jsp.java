package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class update_005fhomeopathy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("           \n");
      out.write("  \n");
      out.write("    \n");
      out.write("        ");

            String nm=(String)session.getAttribute("user");
            if(nm==null)
            {
           response.sendRedirect("admin/index.jsp"); 
            }
            
            
      out.write("\n");
      out.write("        <div class=\"row\">\n");
      out.write("           <nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"admin/admin_home.jsp\">Health Solution</a>\n");
      out.write("    </div>\n");
      out.write("    <ul class=\"nav navbar-nav\">\n");
      out.write("      \n");
      out.write("      <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" >Disease <span class=\"caret\"></span></a>\n");
      out.write("        <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"admin/add_disease.jsp\">Add Disease</a></li>\n");
      out.write("            <li><a href=\"admin/view_disease.jsp\">Edit Disease</a></li>\n");
      out.write("            <li><a href=\"admin/view_disease.jsp\">View Disease</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" >Symptoms <span class=\"caret\"></span></a>\n");
      out.write("        <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"admin/add_symptoms.jsp\">Add Symptoms</a></li>\n");
      out.write("            <li><a href=\"admin/view_symptoms.jsp\">Edit Symptoms</a></li>\n");
      out.write("            <li><a href=\"admin/view_symptoms.jsp\">View Symptoms</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("        <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" >Remedies <span class=\"caret\"></span></a>\n");
      out.write("        <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"view_medicine.jsp\">Allopathy(Medical)</a></li>\n");
      out.write("            <li><a href=\"#\">Homeopathy</a></li>\n");
      out.write("          \n");
      out.write("        </ul>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("        <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" >Doctors <span class=\"caret\"></span></a>\n");
      out.write("        <ul class=\"dropdown-menu\">\n");
      out.write("          <li><a href=\"#\">Page 1-1</a></li>\n");
      out.write("          <li><a href=\"#\">Page 1-2</a></li>\n");
      out.write("          <li><a href=\"#\">Page 1-3</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("        <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
      out.print(nm );
      out.write(" <span class=\"caret\"></span></a>\n");
      out.write("        <ul class=\"dropdown-menu\">\n");
      out.write("          <li><a href=\"#\">Logout</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </li>\n");
      out.write("       \n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("    </body>  \n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- for current page -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-lg-1\"></div>\n");
      out.write("<div class=\"col-lg-10\">\n");
      out.write("    <form action=\"update_homeopathy_code\" method=\"post\" enctype=\"multipart/form-data\">    \n");
      out.write("    <table align=\"center\" class=\"table table-hover table-bordered table-striped\">\n");
      out.write("        <tr> <h3 align=\"center\">Edit Homeopathy(Medicine) Details</h3></tr>\n");
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
      out.write("                   ");
 
                        Connection conn=null;
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
                       int ide=Integer.parseInt(request.getParameter("i"));
                       String qry="select * from homeopathy where id=?";
                         PreparedStatement ps1=con.prepareStatement(qry);
                         ps1.setInt(1, ide);
                         ResultSet rs1=ps1.executeQuery();
                         if(rs1.next())
                         { 
      out.write("\n");
      out.write("                         <tr><td>Name</td>\n");
      out.write("                                <input type=\"hidden\" value=\"");
      out.print(rs1.getInt("id"));
      out.write("\" name=\"ide\" >\n");
      out.write("                             <td><input type=\"text\" name=\"hnm\" value=\"");
      out.print(rs1.getString("hname"));
      out.write("\" class=\"form-control\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr><td>Medicine Details</td>\n");
      out.write("                             <td><input type=\"text\" name=\"hdt\" value=\"");
      out.print(rs1.getString("hdetails"));
      out.write("\" class=\"form-control\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td>");
      out.print(rs1.getString("fname"));
      out.write("</td>\n");
      out.write("                             <td> <input type=\"file\" name=\"doc\" class=\"form-control\" >Want to change?<b>Choose new file</b></td>\n");
      out.write("                         </tr>\n");
      out.write("                         <tr>\n");
      out.write("                             <td colspan=\"2\"> <input type=\"submit\" value=\"Change\" class=\"form-control btn-primary\"></td>\n");
      out.write("                         </tr>\n");
      out.write("                         \n");
      out.write("                         ");
 }
                    
      out.write("  \n");
      out.write("        \n");
      out.write("    </table> \n");
      out.write(" </form>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div class=\"col-lg-1\"></div>\n");
      out.write("\n");
      out.write("   \n");
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
