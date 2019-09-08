<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


     <style type="text/css">
    
     .navbar{
       margin:0; 
     }

       
          .carousel-inner img {
      width: 100%;
      height: 100%;
        }
     

      section .define{
        height: 700px;
      }

	 #imggg{
	 	height:400px;
	 	width:200x;
	 
	 }





.sidenav {
  height: 1000px;
  width: 200px;
  position: relative;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #000;
  padding-top: 10px;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}



@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}



     </style>
     

    <title>Home-page</title>
    
    
  </head>

  <body style="background-color:black;">
    
   <jsp:include page="header.jsp"></jsp:include>

    
         <!--Navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark primary-color bg-primary text-white">

  			

  				<!-- Collapse button -->
  				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
    				aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
   				 <span class="navbar-toggler-icon"></span>
  				</button>

  				<!-- Collapsible content -->
  				<div class="collapse navbar-collapse" id="basicExampleNav">

    				<!-- Links -->
    				<ul class="navbar-nav mr-auto">
      				<li class="nav-item active">
        				<a class="nav-link" href="index.jsp">Home
          				<span class="sr-only">(current)</span>
        				</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="products.jsp">Products</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="services.jsp">Services</a>
      				</li>

					<li class="nav-item">
        				<a class="nav-link" href="feedback.jsp">Help</a>
      				</li>
      				

    				</ul>
    				<!-- Links -->

    				<form class="form-inline">
      				<div class="md-form my-0">
        				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        				<button class="form-control mr-sm-2 btn btn-success" >Search</button>
      				</div>
    				</form>
  				</div>
  				<!-- Collapsible content -->
	</nav>
				<!--/.Navbar-->
    				
    				
    				
    				<div class="sidenav">


				<div class="card" style="width: 200px; margin-top: 10px; background-color:#C5E0F5;">
                      <img src="img/custom.png"style="margin-top: 20px; margin-left: 20px;" width="150px" height="100px" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Custom Computer Builds</h5>
                        <button type="button" class="btn btn-primary btn-lg btn-block">Go</button>
                     <!--    <a href="customOrder.jsp" class="btn btn" style="width: 300px">View Custom Computers</a> -->
                      </div>
                    </div>
                    
                    
                    <div class="card" style="width: 200px; margin-top: 30px;  background-color:#C5E0F5;">
                      <img src="img/part.png"style="margin-top: 20px; margin-left: 20px;" width="150px" height="100px" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspParts</h5>
                        <button type="button" class="btn btn-primary btn-lg btn-block">Go</button>
                     <!--    <a href="customOrder.jsp" class="btn btn" style="width: 300px">View Custom Computers</a> -->
                      </div>
                    </div>
                    
                    <div class="card" style="width: 200px; margin-top: 30px;  background-color:#C5E0F5;">
                      <img src="img/custom.png"style="margin-top: 20px; margin-left: 20px;" width="150px" height="100px" alt="...">
                      <div class="card-body">
                        <h5 class="card-title "> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspServices </h5>
                        <button type="button" class="btn btn-primary btn-lg btn-block">Go</button>
                     <!--    <a href="customOrder.jsp" class="btn btn" style="width: 300px">View Custom Computers</a> -->
                      </div>
                    </div>


</div>
    				
				
      <section style="margin-top: -1000px; margin-left:200px;">
        <div class="container-fluid " >
         
          <div >
            <div class="row" style="min-height: 700px;   " >

              <div style="padding: 20px; width:2000px; "> 
                <!--slide show sections-->
             <div id="demo" class="carousel slide" data-ride="carousel"  style="height:400px; width:1000px;  ">

  <!-- Indicators -->
                        <ul class="carousel-indicators" >
                         <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                         <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
  
                        <!-- The slideshow --> 
                        
                        <div class="carousel-inner" >
                          <div class="carousel-item active">
                         <a href="index.jsp">  <img id = "imggg"  src="img/asus.png" ></a> 
                          </div>
                          <div class="carousel-item" >
                            <a href="index.jsp"><img id = "imggg"  src="img/slide1.png" ></a>
                          </div>
                          <div class="carousel-item" >
                           <a href="index.jsp"> <img id = "imggg"  src="img/gm.jpg" ></a>
                          </div>
                        </div>
                        
                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                          <span class="carousel-control-prev-icon"></span>
                        </a>
                             <a class="carousel-control-next" href="#demo" data-slide="next">
                          <span class="carousel-control-next-icon"></span>
                       </a>
                      </div>
                      <!--slide show ending sections-->
                      



              <!--about the Azus Products-->
						
						<div style="margin-top:20px;">
                         <div class="jumbotron" style="padding: 20px; width:1000px; background-color:#8EC0E7;">
                           <!--   <span style="color: white;font-weight: 1000">About Azus Products..!!</span>
                            <hr style="  border: 2px solid white;border-radius: 2px"> -->
                            <p style="color: blue">ASUS is a Taiwan-based, multinational computer hardware and consumer electronics company that was established in 1989. Dedicated to creating products for today's and tomorrow's smart life, ASUS is the world's No. 1 motherboard and gaming brand as well as a top-three consumer notebook vendor.
                            <a href="https://en.wikipedia.org/wiki/Asus" target="_blank" >Wikipedia</a></p>

                           </div>

						</div>
	</div>
	
              <div class="col-lg-12 col-md-12" style="padding:10px; width:1000px; margin-left: 10px;">
                
                <div class="jumbotron"  style="padding-left:20px; width:1000px;">
                  <span  style="font-weight: 1000" >Most Preferd Products currently</span>
                  <br><br>
                  <span  style="font-weight: 1000" >Good Design Award 2017 winners</span><hr>
					<p><span style="font-weight: 800">ZenFone AR</span>
					ZenFone AR is the world’s first 5.7-inch smartphone that is both Tango-enabled and Daydream-ready, and was developed in close cooperation with Google. Equipped with an innovative TriCam system consisting of three rear cameras — a motion-tracking, depth-sensing, and high-resolution 23MP camera — ZenFone AR is able to create a three-dimensional model of its surroundings and to track its motion.
					</p>
						<hr>
					<p>
					<span  style="font-weight: 800"> ZenFone 4 Series </span>
					ZenFone 4 Series smartphones are designed to provide the best mobile photography experiences, with dual cameras that enable unlimited creative options and give users the freedom to capture their world from multiple perspectives. The ZenFone 4 Series currently includes two models: ZenFone 4 Pro and ZenFone 4. ZenFone 4 Pro is the ultimate expression of ASUS smartphone design, crafted to provide luxury in every detail and featuring dual cameras to deliver an unparalleled mobile photography experience. </p>
                
                <br>
                
                </div>
               
              </div>
            </div>
            </div>
          </div>
      </section>
    

      <footer id="sticky-footer" class="container-fluid " style="overflow:none; background:#001f3f;">
           
          <!--company links-->    
        <div class="container" style="margin-left: 250px; margin-bottom: 0px">
           <div class="footer-title">Company</div>
            <ul class="list-unstyled">
              <li>
                <a href="#">About Us</a>
              </li>
               <li>
                <a href="#">Support</a>
              </li>
               <li>
                <a href="#">Press</a>
              </li>
              <li>
                <a href="#">Leagal & Privacy</a>
              </li>
            </ul>
        </div>
         <div class="container" style="margin-left: 600px;margin-top:-135px">
           <div class="footer-title">Quick Links</div>
            <ul class="list-unstyled">
              <li>
                <a href="#">News</a>
              </li>
               <li>
                <a href="#">Contact Us</a>
              </li>
               <li>
                <a href="#">FAQ</a>
              </li>
            </ul>
        </div>

         <div class="container" style="margin-left: 1000px;margin-top:-115px">
           <div class="footer-title ">Social</div>
            <ul class="list-unstyled">
              <li>
                <a href="#">Twitter</a>
              </li>
               <li>
                <a href="#">Google++</a>
              </li>
               <li>
                <a href="#">Linked in</a>
              </li>
              <li>
                <a href="#">Facebook</a>
              </li>
            </ul>
        </div>

         

          <div class="container text-center">

            <small>Copyright &copy; <span style="color: red"> NM </span> Creation lmt</small>
          </div>
        </footer>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

