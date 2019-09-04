
<%@page import="java.sql.Connection"%>
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
      
     

     .form{
     	padding: 40px;
     	padding-top: 100px;
     	width: 600px;
     	color: white;
     	background-color: rgba(1,1,1,0.7);
     	margin-top: 100px;
      margin-bottom: 100px;
     	text-align: center;
     }

     .navbar{
       margin:0; 
     }

     
  
     </style>
    <title>Hello, world!</title>
  </head>

  <body style="background-color:white">
    
  <jsp:include page="header.jsp"></jsp:include>
    
         <!--Navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark primary-color bg-primary text-white>

  			

  				<!-- Collapse button -->
  				<button class="navbar-toggler type="button" data-toggle="collapse" data-target="#basicExampleNav"
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
    				

    <section>
    
    
    
    	<form class="container form rounded" action="login" method="post">
  				<div class="form-group">
   				 <label for="exampleInputEmail1">Enter ID </label>
    				<input type="text" class="form-control" id="exampleInputEmail1" required  placeholder="Enter the ID" class="size" name="uname">
   				 <small id="emailHelp" class="form-text text-muted">Enter the ID that can identify you</small>
  				</div>
  				<div class="form-group" style="padding-top: 20px">
    				<label for="exampleInputPassword1">Password</label>
    				<input type="password" class="form-control" id="exampleInputPassword1" required placeholder="Password" name="pass">
  				</div>
  				<div class="form-check">
    				<input type="checkbox" class="form-check-input" id="exampleCheck1">
    				<label class="form-check-label" for="exampleCheck1">Check me out</label>
  				</div></br>
  				<button type="submit" class="btn btn-success" >Submit</button>
  				<button type="reset" class="btn btn-danger" style="margin-left: 10px">Reset</button>
				</form>				

        <div class="jumbotron bg-primary text-white" style="width: 1000px;text-align: center;margin-left: 200px;padding: 20px;padding-right: 50px;padding-left: 50px">
              <div class="footer-title" style="font-weight: 700">THE BENEFITS OF MY COMPANY STORE</div>
            <p>
With an <span style="color:red;font-size: 20px">Computer X </span> Company Store you will do away with the hassle of distributing your corporate apparel or uniforms to employees and managers. Thereby, shifting your company manager’s focus from inventory control and distribution, to allowing AllStar Logo do all of the order management for them. Hence, saving you the client, time and money.</p>
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