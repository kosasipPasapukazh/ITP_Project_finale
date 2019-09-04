<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


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

  
     </style>
    <title>Home-page</title>
  </head>

  <body style="background-color:white">
    
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
        				<a class="nav-link" href="featuers.jsp">Features</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="order.jsp">Poducts</a>
      				</li>

      				<!-- Dropdown -->
      				<li class="nav-item dropdown">
        				<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          				aria-haspopup="true" aria-expanded="false">Dropdown</a>
        				<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          				<a class="dropdown-item" href="#">Action</a>
          				<a class="dropdown-item" href="#">Another action</a>
          				<a class="dropdown-item" href="#">Something </a>
        				</div>
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
    				
      <section style="margin-top: 0px">
        <div class="container-fluid " >
         
          <div >
            <div class="row" style="min-height: 700px">
            <div class="col-lg-4 col-md-8 bg-light" style="padding: 20px" style="position: sticky;">
                    <div class="card" style="width: 25rem;">
                      <img src="..." class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Custom Computer Builds</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                       <a href="customOrder.jsp" class="btn btn-dark" style="width: 300px">View Custom Computers</a>
                      </div>
                    </div>
                          <hr>
                    <div class="card" style="width: 25rem;">
                      <img src="..." class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title">Spare Part Buildings</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                       <a href="sparepart.jsp" class="btn btn-dark" style="width:300px" >Go Spare Parts</a>
                      </div>
                    </div>
                        <hr>
                    <div class="card" style="width: 25rem;">
                      <img src="..." class="card-img-top" alt="...">
                      <div class="card-body">
                        <h5 class="card-title" >System Services</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                       <a href="servMain.jsp" class="btn btn-dark" style="width:  300px">Go Service</a>
                      </div>
                    </div>

                    <!--slide show sections-->
             <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
                        <ul class="carousel-indicators">
                         <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                         <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
  
                        <!-- The slideshow -->
                        
                        <div class="carousel-inner" >
                          <div class="carousel-item active">
                            <img src="img/header1.jpg"  width="2000" height="300">
                          </div>
                          <div class="carousel-item" >
                            <img src="img/header2.png" width="2000" height="300">
                          </div>
                          <div class="carousel-item" >
                            <img src="img/homeb1.jpg" width="2000" height="300">
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
             </div>

              <div class="col-lg-4  bg-light" style="padding: 20px"> 
                <!--slide show sections-->
             <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
                        <ul class="carousel-indicators">
                         <li data-target="#demo" data-slide-to="0" class="active"></li>
                      <li data-target="#demo" data-slide-to="1"></li>
                         <li data-target="#demo" data-slide-to="2"></li>
                        </ul>
  
                        <!-- The slideshow -->
                        
                        <div class="carousel-inner" >
                          <div class="carousel-item active">
                            <img src="img/header1.jpg"  width="2000" height="300">
                          </div>
                          <div class="carousel-item" >
                            <img src="img/header2.png" width="2000" height="300">
                          </div>
                          <div class="carousel-item" >
                            <img src="img/homeb1.jpg" width="2000" height="300">
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
                     <div >
                         <div class="jumbotron bg-primary" style="padding: 20px">
                            <span style="color: white;font-weight: 1000">About Azus Products..!!</span>
                            <hr style="  border: 2px solid white;border-radius: 2px">
                            <p style="color: white">ASUS is a Taiwan-based, multinational computer hardware and consumer electronics company that was established in 1989. Dedicated to creating products for today's and tomorrow's smart life, ASUS is the world's No. 1 motherboard and gaming brand as well as a top-three consumer notebook vendor.</p>

                            <p style="color: white">ASUS became widely known in North America when it revolutionized the PC industry in 2007 with its Eee PC™. Today, the company is pioneering new mobile trends with the ASUS ZenFone™ series, and it is rapidly developing virtual and augmented reality products as well as IOT devices and robotics technologies. Most recently, ASUS introduced Zenbo, a smart home robot designed to provide assistance, entertainment, and companionship to families.</p>

                            <p style="color: white">In 2015 and 2016, Fortune magazine recognized ASUS as one of the World’s Most Admired Companies, and for the past four years Interbrand has ranked ASUS Taiwan’s most valuable international brand. The company has more than 17,000 employees, including a world-class R&D team. Driven by innovation and committed to quality, ASUS won 4,385 awards and earned approximately US$13.3 billion in revenue in 2016.</p>
                         </div> 
                     </div>

              </div>
              <div class="col-lg-4 bg-light" style="padding: 20px">
                <div class="jumbotron" style="padding: 20px;">
                    <span style="color: black;font-weight: 1000">Most Populer Product Details</span>
                    <hr style="  border: 2px solid black;border-radius: 2px">
                    <ul style="font-weight: 600">
                      <li>
                       <a href="#">Best Overall: ASUS Chromebook C202SA-YS02 at Amazon, “While a sleek design is all good and well, sometimes you need a laptop that can stand up to a long day’s work.”</a> 
                      </li>
                      <li>
                        <a href="#"> Best 2-in-1: ASUS Chromebook Flip C302CA-DHM4 at Amazon, “Houses a powerfully fast Intel m3 core processor with 64GB of storage and 4GB of RAM.”</a>
                       
                      </li>
                      <li>
                        <a href="#">Best for Gaming: ASUS ROG Strix Hero II at Amazon, “A highly appealing option for PC gaming.”</a>
                        
                      </li>
                      <li>
                        <a href="#">Best Portable: ASUS ZenBook S at Amazon, “The size doesn't mean you have to sacrifice any functionality.”</a>
                        
                      </li>
                      <li>
                        <a href="#"> Best Design: ASUS F556UA-AB32 at Amazon, “Strikes a harmonious balance between beautiful design and impressive power."</a>
                       
                      </li>
                      <li>
                        <a href="#">  Best Budget: Asus VivoBook Max at Amazon, “The ideal choice if you’re looking to do some work on-the-go or are a college student.”</a>
                      
                      </li>
                      <li>
                        <a href="#">Best for Business: ASUS P-Series P2540UA-AB51 at Amazon, “Workaholics will especially like the ASUS Business Manager software.”</a>
                        
                      </li>
                      <li>
                        <a href="#"> Best for Creatives: ASUS VivoBook S at Amazon, “Has a screen so beautiful you’ll never want to stop working.”</a>
                       
                      </li>
                    </ul>
                    
                </div>
                
              </div>
              <div class="col-lg-12 col-md-12" style="padding:10px">
                
                <div class="jumbotron">
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
                </div>
               
              </div>
            </div>
            </div>
          </div>
        </div>
      </section>
    

      <footer id="sticky-footer" class="container-fluid py-4 bg-dark text-white-50">
           
          <!--company links-->    
        <div class="container" style="margin-left: 250px">
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

