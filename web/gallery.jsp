
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="connection.connect" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>IOT SPECIAL LAB</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="maincss/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="maincss/animate.css">
    
    <link rel="stylesheet" href="maincss/owl.carousel.min.css">
    <link rel="stylesheet" href="maincss/owl.theme.default.min.css">
    <link rel="stylesheet" href="maincss/magnific-popup.css">

    <link rel="stylesheet" href="maincss/aos.css">

    <link rel="stylesheet" href="maincss/ionicons.min.css">
    
    <link rel="stylesheet" href="maincss/flaticon.css">
    <link rel="stylesheet" href="maincss/icomoon.css">
    <link rel="stylesheet" href="maincss/style.css">
  </head>
  <body>
	  <div class="bg-top navbar-light">
    
              <div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.jsp">IOT <span>cell</span></a>
    			</div>	    	
	    				    </div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center px-4">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item "><a href="index.jsp" class="nav-link pl-0">Home</a></li>
	        	<li class="nav-item"><a href="contests.jsp" class="nav-link">Contests</a></li>
                        <li class="nav-item active"><a href="gallery.jsp" class="nav-link">Gallery</a></li>
	               <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                       <li class="nav-item"><a href="login.jsp" class="nav-link" target="_blank">Login</a></li>
	       
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">Achievement Gallery</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Gallery <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>
    <section class="ftco-section bg-light">
			<div class="container-fluid px-4">
				<div class="row justify-content-center mb-5 pb-2">
         
				<div class="row">
 <%
try {
    connect connection=new connect();
    connection.conn();
String QueryString = "SELECT * from main_gallery ORDER BY image_id DESC;";
connection.read(QueryString);
int i=0;
while (connection.rs.next()) {
%>
					<div class="col-md-6 col-lg-3 ftco-animate">
						<div class="staff">
							<div class="img-wrap d-flex align-items-stretch">
                                                            <a href="images/<%=connection.rs.getString(4)%>" class="gallery image-popup img d-flex align-items-center" style="background-image: url(images/<%=connection.rs.getString(4)%>);"></a>	
                                                        </div>
							<div class="text pt-3 text-center">
                                                            
						
								<h3><%=connection.rs.getString(2)%></h3>
								<span class="position mb-2"><%=connection.rs.getString(6)%></span>
								<div class="faded">
									<p><%=connection.rs.getString(3)%></p>
				
	              </div>
							</div>
						</div>
					</div>
					
					
				<% i++;} %>
				</div>
                                        
                                        
			</div>
</section>
                                        <%
// close all the connections.
connection.rs.close();
connection.conclose();
} catch (Exception ex) {

out.println("Unable to connect to database.");
}
%>

       <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
             <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">IOT Cell</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="text">Special Labs</span></li>
                        <li><span class="text">AS Block,</span></li>
	                <li><span class="text">Bannari Amman Institute Of Technology,</span></li>
	                <li><span class="text">Sathyamangalam,Erode</span></li>
	                <li><span class="text">Tamil Nadu-638 401</span></li>
                      </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="text">Mr TAMILSELVAN S</span></li>
                        <li><span class="text">Department of ELECTRONICS AND COMMUNICATION ENGINEERING.</span></li>
	                <li><span class="text">+91 9944934346</span></li>
	                <li><span class="text">tamilselvans@bitsathy.ac.in</span></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="ftco-footer-widget mb-5">
              <h2 class="ftco-heading-2">Web Links</h2>
              <ul class="list-unstyled">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="contests.jsp">Contests</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp" target="_blank">Login</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Developed by Abinash S</p><br>
          </div>
        </div>
      </div>
    </footer>
    
  


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="mainjs/jquery.min.js"></script>
  <script src="mainjs/jquery-migrate-3.0.1.min.js"></script>
  <script src="mainjs/popper.min.js"></script>
  <script src="mainjs/bootstrap.min.js"></script>
  <script src="mainjs/jquery.easing.1.3.js"></script>
  <script src="mainjs/jquery.waypoints.min.js"></script>
  <script src="mainjs/jquery.stellar.min.js"></script>
  <script src="mainjs/owl.carousel.min.js"></script>
  <script src="mainjs/jquery.magnific-popup.min.js"></script>
  <script src="mainjs/aos.js"></script>
  <script src="mainjs/jquery.animateNumber.min.js"></script>
  <script src="mainjs/scrollax.min.js"></script>
  <script src="mainjs/main.js"></script>
    
  </body>
</html>