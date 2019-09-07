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
<meta charset="utf-8">

	<meta name="viewport" content="width=device width, initial-scale -1">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<link rel="shortcut icon" type="image/x-icon" href="image/favi.ico"/>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <style type="text/css">

     .navbar{
       margin:0; 
     }

     

      section .define{
        height: 700px;
      }
     
  
     </style>
    <title>ComputeX</title>
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
		<section>

	<div class="container">

	<div class="jumbotron" >

<ul class="nav justify-content-end">
  <li class="nav-item">
    <a class="nav-link active" href="supMMain.jsp">Main</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" >|</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="productView.jsp">Product</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active">|</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="supAll.jsp">Supplier</a>
  </li>
</ul>

<br>
<br>

	<div class="jumbotron" style="background-color:#ACA6A6;">


<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Contact Supplier <i class="fa fa-phone"></i> </h5>  
        <p class="card-text">The Email id and phone number of suppliers available here.</p>
        <a href="supContact.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Contact</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Suppliers Categories  </h5>
        <p class="card-text">The three types of suppliers will be shown here.</p>
        <a href="supCatMain.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Show</a>
      </div>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Suppliers and their products</h5>
        <p class="card-text">You can update and delete the product details of Suppliers.</p>
        <a href="supProductUpdate.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Find</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Stock Requests</h5>
        <p class="card-text">The request from stock manager will be available here.</p>
        <a href="stoReq.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Request for Payment</h5>
        <p class="card-text">You can request for Payments for the stocks purchased.</p>
        <a href="payReq.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Request</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Request for Leave</h5>
        <p class="card-text">You can request for the Leave from the Manager.</p>
        <a href="leaveReq.jsp" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Request</a>
      </div>
    </div>
  </div>
</div>

</div>
</div>
	</div>
	</div>		

</section>

</body>

</html>