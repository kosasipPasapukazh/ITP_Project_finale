<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
	
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		
		
		<style type="text/css">
    

     .navbar{
       margin:0; 
     }

     

      section .define{
        height: 700px;
      }
     
     #bttn:hover{
     
     	color:#239E00;
     	font-weight: bold;
     	border:#239E00;
     	border-style: solid;
  		border-width: thick;
     	
     }
     
  
     </style>
		
		
	</head>

  <body style="background-color:#C4F5B5">
    
    <jsp:include page="header.jsp"></jsp:include>

<!--Navbar-->
	<nav class="navbar navbar-expand-lg navbar-dark primary-color bg-primary text-white">

  			

  				<!-- Collapse button -->
  				<button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#basicExampleNav"
    				aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
   				 <span class="navbar-toggler-icon"></span>
  				</button>

  				<!-- Collapsible content -->
  				<div class="collapse navbar-collapse" id="basicExampleNav">

    				<!-- Links -->
    				<ul class="navbar-nav mr-auto">
      				<li class="nav-item active">
        				<a class="nav-link"  href="StockManager.jsp">Main
          				<span class="sr-only">(current)</span>
        				</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="productView.jsp">Products</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="stoPro.jsp">My Profile</a>
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
	<br/>
	<br/>

	<div class="container">
	
	<div class="jumbotron" style="background-color:#ABF595;">
	
	<form onsubmit="return findEmployeeForm() class="was-validated">
	
	<table class="table table-striped" style="background-color:#96F27C;"   >
	
	<h1 align="center">Request New Stock</h1>
	
	<tr>
	
		<td colspan="1">
		<fieldset>
		
		
		
		<div class="form-group">
			<label class="col-md-4 control-label">Product Name</label>
			<div class="col-md-8 inputGroupContainer">
				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="RequestNewStockProductNmae" name="RequestNewStockProductName" placeholder="Product Name" class="form-control" required="true" value="" type="text" required></div>
            </div>
        </div>
		
	
		
		<div class="form-group">
			<label class="col-md-4 control-label">Quantity</label>
			<div class="col-md-8 inputGroupContainer">
				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="RequestNewStockQuantity" name="RequestNewStockQuantity" placeholder="Quantity" class="form-control" required="true" value="" type="text" required></div>
            </div>
        </div>
		
		<div class="form-group">
			<label class="col-md-4 control-label">Date</label>
			<div class="col-md-8 inputGroupContainer">
				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="RequestNewStockDate" name="RequestNewStockDate" placeholder="Date" class="form-control" required="true" value="" type="Date" required></div>
            </div>
        </div>
		
		<div class="form-group">
			<label class="col-md-4 control-label">Product Details</label>
			<div class="col-md-8 inputGroupContainer">
				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="RequestNewStockProductDetails" name="RequestNewStockProductDetails" placeholder="ProductDetails" class="form-control" required="true" value="" type="text" size="25" required></div>
            </div>
        </div>
		
		
		
		</fieldset>
				
		</td>
				
	</tr>
			
	</table>
	
				<input id="bttn" type="submit" name="Request" style="font-size:20px;"  class="form-control" value="Request"  id="submit" onClick="return booked();"/>

				<br/>
	
				<input id="bttn" type="reset" value="Reset" style="font-size:20px;"  class="form-control" />
				
				<br/>
	
	</form>
			
	</div> 
	</div>
	
	</section>
	
	</body>
	</html>