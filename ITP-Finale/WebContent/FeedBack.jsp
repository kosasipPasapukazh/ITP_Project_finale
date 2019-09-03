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
      html,body{
      width: 100%;
      height: 100%;
      margin:0;
      padding: 0;
      overflow-x: hidden; 

      background-color: white;
     }
     body{
           margin: 0;
           background-image: 100% 100%;
     }
      
      header {
           height: 150px;
           background-color: rgba(1,1,1,0.7);

      }

      header  img{
      	height: 50px;
      	width: 50px;
      	margin-top: 30px;
      	border-radius: 50%;
      }

     .navbar{
       margin:0; 
     }

     

      section .define{
        height: 700px;
      }
     
  
     </style>
    <title>Home-page</title>
  </head>

  <body>
    
    <header class="container-fluid">
             <div >
               <br>
             </div>
            <div id="header-title" class="container">
             <span style="font-weight:800;color:white;font-size: 40px;">Star -<span style="color: red">X</span> </span>
            <div class="container">
                <img src="userlogo.png" style="border-radius: 50%;margin-left: 1000px;margin-top: -100px">
            </div>
          </div>
           <div class="container" style="margin-left: 1020px">
             <span><a href="#" style="color:white;font-weight: 800;padding: 30px;text-orientation: none">Login</a></span>
             <span><a href="#" style="color:white;font-weight: 800;padding: 30px;text-orientation: none">SignUp</a></span>
           </div>
      
    </header>

    
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
        				<a class="nav-link" href="#">Home
          				<span class="sr-only">(current)</span>
        				</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="#">Features</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="#">Poducts</a>
      				</li>

      				<!-- Dropdown -->
      				<li class="nav-item dropdown">
        				<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
          				aria-haspopup="true" aria-expanded="false">Dropdown</a>
        				<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          				<a class="dropdown-item" href="#">Action</a>
          				<a class="dropdown-item" href="#">Another action</a>
          				<a class="dropdown-item" href="#">Something else here</a>
        				</div>
      				</li>

    				</ul>
    				<!-- Links -->

    				<form class="form-inline ">
      				<div class="md-form my-0">
        				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        				<button class="form-control mr-sm-2 btn btn-success" >Search</button>
      				</div>
    				</form>
  				</div>
  				<!-- Collapsible content -->
	</nav>
				<!--/.Navbar-->
    				
      <section >
        <br/>
  <br/>

  <div class="container">
    <div class="jumbotron">
     
     <form class="well form-horizontal" onsubmit="return validateEmployeeRegisterForm()">
    
      <table class="table table-striped">
      <h1 align="center" >FEEDBACK</h1>
      
      </br>
    <hr>
        <p>
            <h3>Please provide your feedback below:</h3>
        </p>
    

    
    <div align="center"><br>
<p><h2>Is this user friendly</h2></p>
<input type="radio" name="group1" value="Very Satisfied"> Very Satisfied<br>
<input type="radio" name="group1" value="satisfied" checked> satisfied<br>
<input type="radio" name="group1" value="Natural"> Natural<br>
<input type="radio" name="group1" value="Un Satisfied"> Un Satisfied<br>


    </div>
    
    
    
    
    
    <div align="center"><br>
<p><h2>how is the  responce</h2></p>
<input type="radio" name="group1" value="Very Satisfied"> Very Satisfied<br>
<input type="radio" name="group1" value="satisfied" checked> satisfied<br>
<input type="radio" name="group1" value="Natural"> Natural<br>
<input type="radio" name="group1" value="Un Satisfied"> Un Satisfied<br>
    </div>
    
    
    
    
    <div align="center"><br>
<p><h2>How about  services</h2></p>
<input type="radio" name="group1" value="Very Satisfied"> Very Satisfied<br>
<input type="radio" name="group1" value="satisfied" checked> satisfied<br>
<input type="radio" name="group1" value="Natural"> Natural<br>
<input type="radio" name="group1" value="Un Satisfied"> Un Satisfied<br>
  </div>
  <br>
  <br>
    
    
    <center>
        <form role="form" method="post" id="reused_form">
            <div class="row">
                <div class="col-sm-12 form-group">
                <label><h2>WHAT ABOUT OUR WEBSITE?</h2></label>
                <p>
                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="bad" >
                    Bad
                    </label>

                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="average" >
                    Average
                    </label>

                    <label class="radio-inline">
                    <input type="radio" name="experience" id="radio_experience" value="good" >
                    Good
                    </label>
                </p>
                </div>
            </div>
      </center>
      <br>
      <br>
      <center>
            <div class="row">
                <div class="col-sm-12 form-group">
                    <label for="comments">
                        Comments:</label>
                    <textarea class="form-control" type="textarea" name="comments" id="comments" placeholder="Your Comments" maxlength="6000" rows="7"></textarea>
                </div>
            </div>
            <div class="row">
      </center>
                <center>
                        <div class="row">
                <div class="col-sm-12 form-group">
                    <button type="submit" class="btn btn-lg btn-warning btn-block" >SUBMIT </button>
                </div>
            </div>
      </center>

        </form>
        
    </div>
</div>
</hr>
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