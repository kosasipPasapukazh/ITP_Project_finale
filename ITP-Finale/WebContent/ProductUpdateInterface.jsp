<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/test.css" rel="stylesheet" type="text/css">

  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/test.css" rel="stylesheet" type="text/css">

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

.btn:hover {background-color: #3e8e41}

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
    <title>Home-page</title>
  </head>



<title>Update Products</title>
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
  				<button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#basicExampleNav"
    				aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
   				 <span class="navbar-toggler-icon"></span>
  				</button>

  				<!-- Collapsible content -->
  				<div class="collapse navbar-collapse" id="basicExampleNav">

    				<!-- Links -->
    				<ul class="navbar-nav mr-auto">
      				<li class="nav-item active">
        				<a class="nav-link"  href="StockManager.jsp">Home
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






<div id="UpdateOT" class="container">


<h3 class="interfaceHeader">Update Product Information</h3>

<c:forEach items="${Update}" var="p">

<form action="updateProductHandler" method="post" >

 <div class="form-group form-group col-md-6"> 
ProductCode:<br/>

<input type="number" value="${p.productCode}" name="productCode" class="form-control" readonly><br/>
</div>

 <div class="form-group form-group col-md-6">

ProductName:<br/>
<input type="text" name="productName" style="width:200px"  value="${p.productName}" class="form-control" required><br/>
</div>

<div class="form-group form-group col-md-6">
UnitPrice:<br/>
<input type="number" name="unitPrice" style="width:200px"  value="${p.unitPrice}" class="form-control"  step="0.01" required><br/>
</div>



 <div class="form-group form-group col-md-6">  
Quantity:<br/>
<input type="number" name="quantity" value="${p.quantity}" style="width:200px"  class="form-control"    required><br/>
</div>



<input type="submit" value="submit" id="OTsubmit" class="btn btn-primary">



</form><br/><br/>

</c:forEach>

<%
if(session.getAttribute("rowsProm")!=null){
%>
<p> ${rowsProm} is an in valid value .value range 0-50000</p>
<%
session.setAttribute("rowsProm",null);
}%> 
</div>

</div> 

<div id="response">

 








</body>
</html>