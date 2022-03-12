package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class search_005fmedicine_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700\" rel=\"stylesheet\">\n");
      out.write("          <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("                    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("                 <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"css1/linearicons.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/magnific-popup.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/jquery-ui.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/nice-select.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/animate.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css1/owl.carousel.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("         <link href=\"css1/main.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("               ");

          String nm=(String)session.getAttribute("user");
          if(nm==null)
          {
              response.sendRedirect("index.jsp");
          }
         
            
      out.write("\n");
      out.write("         <header id=\"header\">\n");
      out.write("\t  \t\t<div class=\"header-top\">\n");
      out.write("\t  \t\t\t<div class=\"container\">\n");
      out.write("\t\t\t  \t\t<div class=\"row align-items-center\">\n");
      out.write("\t\t\t  \t\t\t<div class=\"col-lg-6 col-sm-6 col-4 header-top-left\">\n");
      out.write("                                                    <a href=\"tel:+9530123654896\"><span class=\"glyphicon glyphicon-earphone text-success\"></span> <span class=\"text\"><span class=\"text\">+953 012 3654 896</span></span></a>\n");
      out.write("\t\t\t\t  \t\t\t<a href=\"mailto:support@colorlib.com\"><span class=\"glyphicon glyphicon-envelope text-success\"></span> <span class=\"text\"><span class=\"text\">support@colorlib.com</span></span></a>\t\t\t\n");
      out.write("\t\t\t  \t\t\t</div>\n");
      out.write("\t\t\t  \t\t\t<div class=\"col-lg-6 col-sm-6 col-8 header-top-right\">\n");
      out.write("        <a href=\"#\" class=\"text-white text-heading\">Hello ");
      out.print(nm );
      out.write("</a>\n");
      out.write("        <a href=\"user_home.jsp\" class=\"primary-btn text-uppercase\">Search through Disease</a>\n");
      out.write("         <a href=\"logout_user.jsp\" class=\"btn btn-primary text-white text-uppercase \">Logout</a>\n");
      out.write("\t\t\t  \t\t\t</div>\n");
      out.write("\t\t\t  \t\t</div>\t\t\t  \t\t\t\t\t\n");
      out.write("\t  \t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t    <div class=\"container main-menu\">\n");
      out.write("\t\t    \t<div class=\"row align-items-center justify-content-between d-flex\">\n");
      out.write("\t\t\t      <div id=\"logo\">\n");
      out.write("                                  <a href=\"user_home.jsp\"><img src=\"img/logo.png\" alt=\"\" title=\"\" /></a>\n");
      out.write("\t\t\t      </div>\n");
      out.write("\t\t\t      <nav id=\"nav-menu-container\">\n");
      out.write("\t\t\t        <ul class=\"nav-menu\">\n");
      out.write("                                    <li><a href=\"user_home.jsp\">Home</a></li>\n");
      out.write("\t\t\t          <li><a href=\"about.html\">About</a></li>\n");
      out.write("\t\t\t          <li><a href=\"features.html\">Features</a></li>\n");
      out.write("\t\t\t          <li><a href=\"doctors.html\">Doctors</a></li>\n");
      out.write("\t\t\t          <li><a href=\"departments.html\">Departments</a></li>\n");
      out.write("\t\t\t          <li class=\"menu-has-children\"><a href=\"\">Blog</a>\n");
      out.write("\t\t\t            <ul>\n");
      out.write("\t\t\t              <li><a href=\"blog-home.html\">Blog Home</a></li>\n");
      out.write("\t\t\t              <li><a href=\"blog-single.html\">Blog Single</a></li>\n");
      out.write("\t\t\t            </ul>\n");
      out.write("\t\t\t          </li>\t\n");
      out.write("\t\t\t          <li class=\"menu-has-children\"><a href=\"\">Pages</a>\n");
      out.write("\t\t\t            <ul>\n");
      out.write("\t\t\t            \t  <li><a href=\"elements.html\">Elements</a></li>\n");
      out.write("\t\t\t            \t  <li><a href=\"#\">Item One</a></li>\n");
      out.write("\t\t\t            \t  <li><a href=\"#\">Item Two</a></li>\n");
      out.write("\t\t\t\t\t          <li class=\"menu-has-children\"><a href=\"\">Level 2 </a>\n");
      out.write("\t\t\t\t\t            <ul>\n");
      out.write("\t\t\t\t\t              <li><a href=\"#\">Item One</a></li>\n");
      out.write("\t\t\t\t\t              <li><a href=\"#\">Item Two</a></li>\n");
      out.write("\t\t\t\t\t            </ul>\n");
      out.write("\t\t\t\t\t          </li>\t\t\t\t\t                \t\t\n");
      out.write("\t\t\t            </ul>\n");
      out.write("\t\t\t          </li>\t\t\t\t\t          \t\t\t\t\t          \t\t          \n");
      out.write("\t\t\t          <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t        </ul>\n");
      out.write("\t\t\t      </nav><!-- #nav-menu-container -->\t\t    \t\t\n");
      out.write("\t\t    \t</div>\n");
      out.write("\t\t    </div>\n");
      out.write("\t\t  </header><!-- #header -->\n");
      out.write("                  \n");
      out.write("                  <!-- start banner Area -->\n");
      out.write("                  <section class=\"banner-area relative\" style=\"height: 110px;\" id=\"home\">\n");
      out.write("\t\t\t\t<div class=\"overlay overlay-bg\"></div>\t\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row fullscreen d-flex align-items-center justify-content-center\">\n");
      out.write("\t\t\t\t\t\t<div class=\"banner-content col-lg-8 col-md-12\">\t\n");
      out.write("\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\t\t\t\t\t\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t\t<!-- End banner Area -->\n");
      out.write("                        \n");
      out.write("        \n");
      out.write("                        \n");
      out.write("                        <section class=\"appointment-area\">\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <div class=\"col-lg-2\"></div>\n");
      out.write("                                <div class=\"col-lg-8\">\n");
      out.write("                                 <table class=\"table\" style=\"color: #000;font-size: 18px; font-family: Poppins\">\n");
      out.write("                                     \n");
      out.write("                                         ");

                                                            Connection con=null;
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
                                                            String dis=(request.getParameter("disease"));
                                                            String q="select * from add_disease where dname=?";
                                                            PreparedStatement ps=con.prepareStatement(q);
                                                            ps.setString(1, dis);
                                                            ResultSet rs=ps.executeQuery();
                                                            if(rs.next())
                                                            {
                                                                int a=rs.getInt("id");
                                                            
      out.write("\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <td class=\"text-uppercase\"><b>");
      out.print(rs.getString("dname"));
      out.write("</b><td>\n");
      out.write("                                                          \n");
      out.write("                                                            ");

                                                             String qr="select * from medicine where did='"+a+"'";
                                                            PreparedStatement ps1=con.prepareStatement(qr);
                                                            ResultSet rs1=ps1.executeQuery();
                                                            while(rs1.next())
                                                            { 
      out.write("\n");
      out.write("                                                                <td class=\"text-black\"><b>");
      out.print(rs1.getString("m_name"));
      out.write("</b></td>\n");
      out.write("                                                                <td class=\"text-black\">");
      out.print(rs1.getString("m_details"));
      out.write("</td>\n");
      out.write("                                                                <td><img src=\"get_img.jsp?id1=");
      out.print(rs1.getInt("id"));
      out.write("\"></td>\n");
      out.write("                                                            ");
 }
                                                            
      out.write("\n");
      out.write("                                                            </tr> \n");
      out.write("                                                            ");
}
                                                             else
                                                            {
      out.write("\n");
      out.write("                                                             <script>\n");
      out.write("                                                            alert(\"Disease not available \\n\\\n");
      out.write("                                                            Make sure spell is correct\\n\\ \");\n");
      out.write("                                                             window.location=\"view_medicine_user.jsp\";\n");
      out.write("                                                             </script>\n");
      out.write("                                                            ");
}
                                                            
      out.write("\n");
      out.write("                                                        \n");
      out.write("                                                        <br>\n");
      out.write("                                                        <br>\n");
      out.write("                                                        \n");
      out.write("                                                     <tr>\n");
      out.write("                                                     \n");
      out.write("                                                     </tr>\n");
      out.write("                                                     <br><br>\n");
      out.write("                                                    </table>    \n");
      out.write("              \n");
      out.write("                                </div>\n");
      out.write("                               <div class=\"col-lg-2\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </section>\n");
      out.write("                       \t<!-- start footer Area -->\t\t\n");
      out.write("\t\t\t<footer class=\"footer-area section-gap\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-2  col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"single-footer-widget\">\n");
      out.write("\t\t\t\t\t\t\t\t<h6>Top Products</h6>\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"footer-nav\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Managed Website</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Manage Reputation</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Power Tools</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Marketing Service</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4  col-md-6\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"single-footer-widget mail-chimp\">\n");
      out.write("\t\t\t\t\t\t\t\t<h6 class=\"mb-20\">Contact Us</h6>\n");
      out.write("\t\t\t\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\t\t\t\t56/8, Santa bullevard, Rocky beach, San fransisco, Los angeles, USA\n");
      out.write("\t\t\t\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t\t\t\t<h3>012-6532-568-9746</h3>\n");
      out.write("\t\t\t\t\t\t\t\t<h3>012-6532-568-97468</h3>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-6  col-md-12\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"single-footer-widget newsletter\">\n");
      out.write("\t\t\t\t\t\t\t\t<h6>Newsletter</h6>\n");
      out.write("\t\t\t\t\t\t\t\t<p>You can trust us. we only send promo offers, not a single spam.</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div id=\"mc_embed_signup\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<form target=\"_blank\" action=\"https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01\" method=\"get\" class=\"form-inline\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group row\" style=\"width: 100%\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-lg-8 col-md-12\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<input name=\"EMAIL\" placeholder=\"Your Email Address\" onfocus=\"this.placeholder = ''\" onblur=\"this.placeholder = 'Your Email Address '\" required=\"\" type=\"email\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"col-lg-4 col-md-12\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<button class=\"nw-btn primary-btn circle\">Subscribe<span class=\"lnr lnr-arrow-right\"></span></button>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"info\"></div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\t\t\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"row footer-bottom d-flex justify-content-between\">\n");
      out.write("\t\t\t\t\t\t<p class=\"col-lg-8 col-sm-12 footer-text m-0\"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"fa fa-heart-o\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-4 col-sm-12 footer-social\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-dribbble\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\"><i class=\"fa fa-behance\"></i></a>\n");
      out.write("\t\t\t\t\t\t</div>\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</footer>\n");
      out.write("\t\t\t<!-- End footer Area -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("                        \n");
      out.write("                        <script src=\"js1/vendor/jquery-2.2.4.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/popper.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/vendor/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA\"></script>\n");
      out.write("                        <script src=\"js1/jquery-ui.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/easing.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/hoverIntent.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/superfish.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/jquery.ajaxchimp.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/jquery.magnific-popup.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/jquery.tabs.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/jquery.nice-select.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/owl.carousel.min.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/mail-script.js\" type=\"text/javascript\"></script>\n");
      out.write("                        <script src=\"js1/main.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
