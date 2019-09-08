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


	#ppp{
	
		font-weight: bold;
	
	
	}
	
     #atag{
     
     text-decoration:none;
     
     }
     
     #bttn:hover{
    	border:#FE0000;
    	background-color:#FE0000; 
     
     }

      section .define{
        height: 700px;
      }
     
  
     </style>
    <title>ComputeX</title>
  </head>


	<body style=" background-color:#FFFEAA ">
	
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
        				<a class="nav-link" href="supMMain.jsp">Main
          				<span class="sr-only">(current)</span>
        				</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="productView.jsp">Products</a>
      				</li>
      				<li class="nav-item">
        				<a class="nav-link" href="supAll.jsp">Suppliers</a>
      				</li>
      				
      				      				<!-- Dropdown -->
      				<li class="nav-item dropdown">
        				<a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Request</a>
        				<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          				<a class="dropdown-item" href="#">New Stock</a>
          				<a class="dropdown-item" href="#">Leave</a>
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
		
  <div class="jumbotron"  style="background-color:#738CFF; margin-top:20px;">
  
  
  <h1>Welcome Admin,</h1>
  
  <p>Have a nice day<p>

<div class="row" >
 <div class="column" style="margin-left:100px;">

	<canvas id="canvas" width="250" height="250"></canvas>

<script>

var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(ctx, radius);
  drawNumbers(ctx, radius);
  drawTime(ctx, radius);
}

function drawFace(ctx, radius) {
  var grad;
  ctx.beginPath();
  ctx.arc(0, 0, radius, 0, 2*Math.PI);
  ctx.fillStyle = 'white';
  ctx.fill();
  grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
  grad.addColorStop(0, '#333');
  grad.addColorStop(0.5, 'white');
  grad.addColorStop(1, '#333');
  ctx.strokeStyle = grad;
  ctx.lineWidth = radius*0.1;
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
  ctx.fillStyle = '#333';
  ctx.fill();
}

function drawNumbers(ctx, radius) {
  var ang;
  var num;
  ctx.font = radius*0.15 + "px arial";
  ctx.textBaseline="middle";
  ctx.textAlign="center";
  for(num = 1; num < 13; num++){
    ang = num * Math.PI / 6;
    ctx.rotate(ang);
    ctx.translate(0, -radius*0.85);
    ctx.rotate(-ang);
    ctx.fillText(num.toString(), 0, 0);
    ctx.rotate(ang);
    ctx.translate(0, radius*0.85);
    ctx.rotate(-ang);
  }
}

function drawTime(ctx, radius){
    var now = new Date();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    //hour
    hour=hour%12;
    hour=(hour*Math.PI/6)+
    (minute*Math.PI/(6*60))+
    (second*Math.PI/(360*60));
    drawHand(ctx, hour, radius*0.5, radius*0.07);
    //minute
    minute=(minute*Math.PI/30) + (second*Math.PI/(30*60));
    drawHand(ctx, minute, radius*0.8, radius*0.07);
    // second
    second=(second*Math.PI/30);
    drawHand(ctx, second, radius*0.9, radius*0.02);
}

function drawHand(ctx, pos, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.rotate(pos);
    ctx.lineTo(0, -length);
    ctx.stroke();
    ctx.rotate(-pos);
}
</script>
</div>

	  
  <div class="column" style="margin-left:100px;" >
    <div class="card">
      <div class="card-body">
        <h5 id="ppp" class="card-title">Supplier Products</h5>
        <p class="card-text">Here, you can view the Supplier IDs & Products and Update and Delete</p>
        <p class="card-text"> those when nesessory.</p>
        <a href="supProductUpdate.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">Go</a>
      </div>
    </div>
  </div>
  </div>
  
  </div>
  </div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<div class="container" >
		
			<div class="jumbotron" style=" margin-top: 25px ; background-color:#EE5C5C;">
			
			<h1   id="ppp" style="color:white;">Hello Manager,</h1>
			<br><br><br>

	<div class="container">

	<div class="jumbotron" style="background-color:#FFA25B;">


<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Register Supplier</h5>  
        <p class="card-text">Add suppliers to the system.</p>
        <a href="supReg.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Register</a>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Suppliers Categories  </h5>
        <p class="card-text">The three types of suppliers will be shown here.</p>
        <a href="supCatMain.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Show</a>
      </div>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Contact Supplier <i class="fa fa-phone"></i> </h5>  
        <p class="card-text">The Email id and phone number of suppliers available here.</p>
        <a href="supContact.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Contact</a>
      </div>
    </div>
  </div>
  
  
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Stock Requests</h5>
        <p class="card-text">The request from stock manager will be available here.</p>
        <a href="stoReq.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
</div>

<br>

<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Request for Payment</h5>
        <p class="card-text">You can request for Payments for the stocks purchased.</p>
        <a href="payReq.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Request</a>
      </div>
    </div>
  </div>
  
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5  id="ppp" class="card-title">Request for Leave</h5>
        <p class="card-text">You can request for the Leave from the Manager.</p>
        <a href="leaveReq.jsp" id="bttn" class="btn btn-primary" style="float: right; height: 40px; width: 150px;">Request</a>
      </div>
    </div>
  </div>
</div>

</div>
	</div>
	</div>

</div>
</section>

	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>