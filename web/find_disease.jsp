<%-- 
    Document   : user_home
    Created on : 20-Nov-2018, 1:24:12 PM
    Author     : Nitin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css1/linearicons.css" rel="stylesheet" type="text/css"/>
        <link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css1/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css1/magnific-popup.css" rel="stylesheet" type="text/css"/>
        <link href="css1/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="css1/nice-select.css" rel="stylesheet" type="text/css"/>
        <link href="css1/animate.min.css" rel="stylesheet" type="text/css"/>
        <link href="css1/owl.carousel.css" rel="stylesheet" type="text/css"/>
         <link href="css1/main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
          String nm=(String)session.getAttribute("user");
          if(nm==null)
          {
              response.sendRedirect("index.jsp");
          }
         
            %>
         <header id="header">
	  		<div class="header-top">
	  			<div class="container">
			  		<div class="row align-items-center">
			  			<div class="col-lg-6 col-sm-6 col-4 header-top-left">
                                                    <a href="tel:+9530123654896"><span class="glyphicon glyphicon-earphone text-success"></span> <span class="text"><span class="text">+953 012 3654 896</span></span></a>
				  			<a href="mailto:support@colorlib.com"><span class="glyphicon glyphicon-envelope text-success"></span> <span class="text"><span class="text">support@colorlib.com</span></span></a>			
			  			</div>
			  			<div class="col-lg-6 col-sm-6 col-8 header-top-right">
        <a href="#" class="text-white text-heading">Hello <%=nm %></a>
       <a href="find_by_symptoms.jsp" class="primary-btn text-uppercase">Search through Symptoms</a>
        <a href="logout_user.jsp" class="btn btn-primary text-white text-uppercase ">Logout</a>
			  			</div>
			  		</div>			  					
	  			</div>
			</div>
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
                                  <a href="user_home.jsp"><img src="img/logo.png" alt="" title="" /></a>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
                                    <li><a href="user_home.jsp">Home</a></li>
			          <li><a href="about.html">About</a></li>
			          <li><a href="features.html">Features</a></li>
			          <li><a href="doctors.html">Doctors</a></li>
			          <li><a href="departments.html">Departments</a></li>
			          <li class="menu-has-children"><a href="">Blog</a>
			            <ul>
			              <li><a href="blog-home.html">Blog Home</a></li>
			              <li><a href="blog-single.html">Blog Single</a></li>
			            </ul>
			          </li>	
			          <li class="menu-has-children"><a href="">Pages</a>
			            <ul>
			            	  <li><a href="elements.html">Elements</a></li>
			            	  <li><a href="#">Item One</a></li>
			            	  <li><a href="#">Item Two</a></li>
					          <li class="menu-has-children"><a href="">Level 2 </a>
					            <ul>
					              <li><a href="#">Item One</a></li>
					              <li><a href="#">Item Two</a></li>
					            </ul>
					          </li>					                		
			            </ul>
			          </li>					          					          		          
			          <li><a href="contact.html">Contact</a></li>
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->
                  
                  <!-- start banner Area -->
                  <section class="banner-area relative" style="height: 110px;" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-8 col-md-12">
							
							
                                                        
							
						</div>										
					</div>
				</div>					
			</section>
			<!-- End banner Area -->
                        <section class="appointment-area">
                            <div class="container">
                        <%
                            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disease","root","");
            String dis=request.getParameter("disease");
            String q="select * from add_disease where dname=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, dis);
            ResultSet rs=ps.executeQuery();
            int i;
            if(rs.next())
            {
            
                i=rs.getInt("id"); 
                %>
                <div class="row">
                    <div class="col-12"><h1><%=rs.getString("dname") %></h1></div>
                </div>
                <div class="row">
                    <div class="col-12">
                        
                        <table class="table" style="color: #000;font-size: 18px; font-family: Poppins">
                <%
                String qry="select * from symptoms_details where did='"+i+"'";
                 PreparedStatement ps1=con.prepareStatement(qry);
                 ResultSet rs1=ps1.executeQuery();
                 while(rs1.next())
                 {
                 %>
                 
                 <tr>
                     <td><h3>Symptoms</h3></td>
                     <td><span class="glyphicon glyphicon-hand-right"></span></td>
                     <td>   <%=rs1.getString("symptoms_details")%></td>
                        </tr>
                        <br><br>
                        </table>
                 <%
                 }

                 String qr="select * from medicine where did='"+i+"'";
                  PreparedStatement ps2=con.prepareStatement(qr);
                 ResultSet rs2=ps2.executeQuery();
                 while(rs2.next())
                {
                %>
                
                 <table class="table" style="color: #000;font-size: 18px; font-family: Poppins">
                        <tr>
                            <td rowspan="3" ><h3>Medicine : Allopathy </h3></td>
                            <td><h5>Name</h5></td>
                            <td><%=rs2.getString("m_name")%></td>
                        </tr>
                        <tr>  
                            <td><h5>Details </h5></td>
                            <td><%=rs2.getString("m_details")%></td>
                        <tr>
                            <td colspan=""><h5>Image </h5></td>
                            <td><img src="get_img.jsp?id1=<%=rs2.getInt("id")%>" height="300" width="300"></td></tr>
                        </tr>
                        <br><br>
                 </table>
                <%
                }

                String query="select * from homeopathy where did='"+i+"'";
                  PreparedStatement ps3=con.prepareStatement(query);
                 ResultSet rs3=ps3.executeQuery();
                 while(rs3.next())
                {
                %>
                
                 <table class="table" style="color: #000;font-size: 18px; font-family: Poppins">
                        <tr>
                            <td rowspan="3" ><h3>Medicine : Homeopathy </h3></td>
                            <td><h5>Name</h5></td>
                            <td><%=rs3.getString("hname")%></td>
                        </tr>
                        <tr>  
                            <td><h5>Details </h5></td>
                            <td><%=rs3.getString("hdetails")%></td>
                        <tr>
                            <td colspan=""><h5>File </h5></td>
                            <td><%=rs3.getString("fname")%></td>
                            <td><button class="btn-block"><a href="file_download?i=<%=rs3.getInt("id")%>">Download</a></button></td>
                        
                        </tr>
                        <br><br>
                 </table>
                <%
                }
                
                 String que="select doctors.id,doctors.name,doctors.qualification,doctors.fees,doctors.contact,doctors.email,doctors.address,doctors.fdata,city.cityname,state.statename,country.countryname from doctors"
                    + " inner join city on city.id=doctors.cityid "
                    + "inner join state on state.id=doctors.stateid  "
                    + "inner join country on country.id=doctors.countryid where did='"+i+"'";
                  PreparedStatement ps4=con.prepareStatement(que);
                 ResultSet rs4=ps4.executeQuery();
                 while(rs4.next())
                {
                 %>
                 
                 <table class="table" style="color: #000;font-size: 18px; font-family: Poppins">
                        <tr>
                            <td rowspan="3" ><h3>Doctors </h3></td>
                            <td><h5>Name</h5></td>
                            <td><%=rs4.getString("name")%></td>
                            
                        </tr>
                        <tr>  
                            <td><h5>Qualification </h5></td>
                            <td><%=rs4.getString("qualification")%></td>
                        </tr>
                         <tr>  
                            <td><h5>Counsult Fee </h5></td>
                            <td><%=rs4.getString("fees")%></td>
                        </tr>
                        <tr>  <td> </td>
                             <td><h5>Contact</h5></td>
                             <td><%=rs4.getString("contact")%> </td>   
                            
                        </tr>
                        <tr> 
                            <td></td>
                            <td><h5>Email </h5></td>
                            <td><%=rs4.getString("email")%></td>
                        </tr>
                         <tr>  
                            <td></td>
                            <td><h5>Address </h5></td>
                            <td><%=rs4.getString("address")%>, <%=rs4.getString("cityname")%>, <%=rs4.getString("statename")%>, <%=rs4.getString("countryname")%></td>
                           
                        </tr>
                        
                        <tr><td></td>
                            <td colspan=""><h5>image </h5></td>
                            
                            <td><img src="get_doctors_img.jsp?id1=<%=rs4.getInt("id")%>" height="300" width="300"></td>
                        
                        </tr>
                        <br><br>
                 </table>
                <%

                }
                %>
                
  
                        
                    </div>
                </div>
                 
                 
<%
    }
    else
    {%>
    <script>
        alert("Disease not available \n\
               Make sure spell is correct\n\ ");
               window.location="user_home.jsp";
               
    </script>
    <%}

              
            
                            %>
                            </div>
                        </section>
                       	<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-2  col-md-6">
							<div class="single-footer-widget">
								<h6>Top Products</h6>
								<ul class="footer-nav">
									<li><a href="#">Managed Website</a></li>
									<li><a href="#">Manage Reputation</a></li>
									<li><a href="#">Power Tools</a></li>
									<li><a href="#">Marketing Service</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-4  col-md-6">
							<div class="single-footer-widget mail-chimp">
								<h6 class="mb-20">Contact Us</h6>
								<p>
									56/8, Santa bullevard, Rocky beach, San fransisco, Los angeles, USA
								</p>
								<h3>012-6532-568-9746</h3>
								<h3>012-6532-568-97468</h3>
							</div>
						</div>							
						<div class="col-lg-6  col-md-12">
							<div class="single-footer-widget newsletter">
								<h6>Newsletter</h6>
								<p>You can trust us. we only send promo offers, not a single spam.</p>
								<div id="mc_embed_signup">
									<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

										<div class="form-group row" style="width: 100%">
											<div class="col-lg-8 col-md-12">
												<input name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" required="" type="email">
											</div> 
										
											<div class="col-lg-4 col-md-12">
												<button class="nw-btn primary-btn circle">Subscribe<span class="lnr lnr-arrow-right"></span></button>
											</div> 
										</div>		
										<div class="info"></div>
									</form>
								</div>		
							</div>
						</div>					
					</div>

					<div class="row footer-bottom d-flex justify-content-between">
						<p class="col-lg-8 col-sm-12 footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>					
					</div>
				</div>
			</footer>
			<!-- End footer Area -->


			
                        
                        <script src="js1/vendor/jquery-2.2.4.min.js" type="text/javascript"></script>
                        <script src="js1/popper.min.js" type="text/javascript"></script>
                        <script src="js1/vendor/bootstrap.min.js" type="text/javascript"></script>
                        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
                        <script src="js1/jquery-ui.js" type="text/javascript"></script>
                        <script src="js1/easing.min.js" type="text/javascript"></script>
                        <script src="js1/hoverIntent.js" type="text/javascript"></script>
                        <script src="js1/superfish.min.js" type="text/javascript"></script>
                        <script src="js1/jquery.ajaxchimp.min.js" type="text/javascript"></script>
                        <script src="js1/jquery.magnific-popup.min.js" type="text/javascript"></script>
                        <script src="js1/jquery.tabs.min.js" type="text/javascript"></script>
                        <script src="js1/jquery.nice-select.min.js" type="text/javascript"></script>
                        <script src="js1/owl.carousel.min.js" type="text/javascript"></script>
                        <script src="js1/mail-script.js" type="text/javascript"></script>
                        <script src="js1/main.js" type="text/javascript"></script>

                  
                  
    </body>
</html>
