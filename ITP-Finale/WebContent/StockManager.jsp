<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/test.css" rel="stylesheet" type="text/css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

     <style type="text/css">
     
     .navbar{
       margin:0; 
     }

      section .define{
        height: 700px;
      }

  .btn1 {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  
}

.btns{
  box-shadow: 0 9px #999;
}

.btn:hover {
border:#3e8e41;
background-color: #3e8e41}

.btn:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.btn:hover {
  -ms-transform: scale(1.1);
  -webkit-transform: scale(1.1); 
  transform: scale(1.1);
     
  
     </style>
    <title>Stock Manage</title>
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
    				
      <section >
        
          <br/>
  <br/>


  
  <form onsubmit="return findEmployeeForm() class="was-validated">

  
  
  <div class="container">
  <div class="jumbotron"  style="background-color:#81D867;">
  
  
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
        <h5 class="card-title">Stock</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="productView.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
  </div>
  
  </div>
  </div>
  
  
  
  
  
<div class="container">

  <div class="row" style="margin-left:1px;">
  
  <div class="column"  style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Add</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="AddStock.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>

   <div class="column"  style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Update</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="productUpdateView.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
  
  <div class="column" style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body" >
        <h5 class="card-title">Delete</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="productDeleteView.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
  
  </div>
  
     <div class="row" style="margin-left:1px;">
     
        <div class="column"  style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Request New Stock</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="requestStock.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
  
  <div class="column" style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body" >
        <h5 class="card-title">View Request</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="leaveReq.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
      </div>
    </div>
  </div>
  
    <div class="column" style="width:370px; height:250px;">
    <div class="card">
      <div class="card-body" >
        <h5 class="card-title">Order Details</h5>
        <p class="card-text">Here, you can view your stock and do whatever you want from these information.</p>
        <a href="leaveReq.jsp" class="btn btn-primary" style="float:left; height: 40px; width: 150px;">View</a>
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