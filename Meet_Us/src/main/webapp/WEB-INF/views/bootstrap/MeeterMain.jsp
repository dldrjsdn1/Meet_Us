<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
  <head>
    <title>Meet us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/animate.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/aos.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="../">Meet us</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
<!-- 	          <li class="nav-item"><a href="#home-section" class="nav-link"><span>Home</span></a></li> -->
<!-- 	          <li class="nav-item"><a href="#services-section" class="nav-link"><span>Services</span></a></li> -->
<!-- 	          <li class="nav-item"><a href="#about-section" class="nav-link"><span>About</span></a></li> -->
<!-- 	          <li class="nav-item"><a href="#destination-section" class="nav-link"><span>Destination</span></a></li> -->
<!-- 	          <li class="nav-item"><a href="#hotel-section" class="nav-link"><span>Hotel</span></a></li> -->
<!-- 	          <li class="nav-item"><a href="#restaurant-section" class="nav-link"><span>Restaurant</span></a></li> -->
	          <li class="nav-item"><a href="../" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="../MeeterMain" class="nav-link"><span>Meeter</span></a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
	  
	  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/destination-single.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Discover New Place</h1>
             <p class="breadcrumbs"><span class="mr-2"><a href="../">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Meeter <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-9 pr-lg-4">
    				<div class="row">
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
		    						<div class="vr"><span>Sale</span></div>
				    				<a href="../MeeterDetail"><img src="resources/images/destination-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price"><span class="old-price mr-2">$500</span>$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="images/destination-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
				    				<a href="../MeeterDetail"><img src="resources/images/destination-2.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="resources/images/destination-2.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
				    				<a href="../MeeterDetail"><img src="resources/images/destination-3.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="resources/images/destination-3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
				    				<a href="../MeeterDetail"><img src="resources/images/destination-4.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="resources/images/destination-4.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
				    				<a href="../MeeterDetail"><img src="resources/images/destination-5.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="resources/images/destination-5.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    			<div class="col-md-6 col-lg-4 ftco-animate">
		    				<div class="project">
		    					<div class="img">
				    				<a href="../MeeterDetail"><img src="resources/images/destination-6.jpg" class="img-fluid" alt="Colorlib Template"></a>
			    				</div>
			    				<div class="text">
			    					<h4 class="price">$400</h4>
			    					<span>15 Days Tour</span>
			    					<h3><a href="../MeeterDetail">Gurtnellen, Swetzerland</a></h3>
			    					<div class="star d-flex clearfix">
			    						<div class="mr-auto float-left">
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
				    						<span class="ion-ios-star"></span>
			    						</div>
			    						<div class="float-right">
			    							<span class="rate"><a href="#">(120)</a></span>
			    						</div>
			    					</div>
			    				</div>
			    				<a href="resources/images/destination-6.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			    					<span class="icon-expand"></span>
			    				</a>
		    				</div>
		    			</div>
		    		</div>
		    		<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
    			</div> <!-- end -->
    			<div class="col-lg-3 p-4 bg-light">
    				<div class="search-wrap-1 ftco-animate">
    					<h2 class="mb-3">Find Places</h2>
							<form action="#" class="search-property-1">
		        		<div class="row">
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Destination</label>
		          				<div class="form-field">
		          					<div class="icon"><span class="ion-ios-search"></span></div>
				                <input type="text" class="form-control" placeholder="Search place">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Check-in date</label>
		        					<div class="form-field">
		          					<div class="icon"><span class="ion-ios-calendar"></span></div>
				                <input type="text" class="form-control checkin_date" placeholder="Check In Date">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Check-out date</label>
		        					<div class="form-field">
		          					<div class="icon"><span class="ion-ios-calendar"></span></div>
				                <input type="text" class="form-control checkout_date" placeholder="Check Out Date">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-items-end mb-3">
		        				<div class="form-group">
		        					<label for="#">Price Limit</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="" class="form-control">
		                        <option value="">$5,000</option>
		                        <option value="">$10,000</option>
		                        <option value="">$50,000</option>
		                        <option value="">$100,000</option>
		                        <option value="">$200,000</option>
		                        <option value="">$300,000</option>
		                        <option value="">$400,000</option>
		                        <option value="">$500,000</option>
		                        <option value="">$600,000</option>
		                        <option value="">$700,000</option>
		                        <option value="">$800,000</option>
		                        <option value="">$900,000</option>
		                        <option value="">$1,000,000</option>
		                        <option value="">$2,000,000</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg-12 align-self-end">
		        				<div class="form-group">
		        					<div class="form-field">
				                <input type="submit" value="Search" class="form-control btn btn-primary">
				              </div>
			              </div>
		        			</div>
		        		</div>
		        	</form>
		        </div>
    			</div> <!-- end -->
    		</div>
    	</div>
    </section>


    <footer class="ftco-footer ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">About <span><a href="../">Meet us</a></span></h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-4">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Online Enquiry</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>General Enquiry</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Booking</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Privacy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Refund Policy</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Call Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Adventure</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Hotel and Restaurant</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Beach</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nature</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Camping</a></li>
                <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">Have a Questions?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
	                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
	                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js"/>"></script>
  <script src="<c:url value="/resources/js/popper.min.js"/>"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
  <script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
  <script src="<c:url value="/resources/js/aos.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.animateNumber.min.js"/>"></script>
  <script src="<c:url value="/resources/js/scrollax.min.js"/>"></script>
  <script src="<c:url value="/resources/js/google-map.js"/>"></script>
  
  <script src="<c:url value="/resources/js/main.js"/>"></script>
    
  </body>
</html>