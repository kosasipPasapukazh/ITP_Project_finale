<%@page import="java.util.List"%>
<%@page import="com.service.supplierServiceImp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>ComputeX</title>

	<meta charset="utf-8">

	<meta name="viewport" content="width=device width, initial-scale -1">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<link rel="shortcut icon" type="image/x-icon" href="image/favi.ico"/>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<style>
	
	#add{
	
	border:#FF2A2A;
	border-radius:5px;
	background-color:#FE8080;
	
	}
	
	#add:hover{
	
	border:#FF2A2A;
     	color:#FF2A2A;
     	font-weight: bold;
     	border-style: solid;
  		border-width: thick;
     	
	
	}
	
	</style>
	


</head>

	<body style=" background-color:#FFFEAA " >
	
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
    				
    				
    				
    				
    				
    				
    				
    				</div>
    				
    				
    				
    				
    				
    				
    				</nav>
	
	
	
	
	
	
	
	
	
		<section>
<div class="container" style="margin-top:20px;">

	<div class="jumbotron" style=" background-color:#EE5C5C;">

	<h3 style= "float-left:500px; color:#FFFFFF;">Request for Payment</h3> <br>


<%


List positonls;//for the emplyee Positions
supplierServiceImp st2=new supplierServiceImp();

System.out.println(st2.getSupNameID());
positonls=st2.getSupNameID();



%>

<br>

<div class="container">
<div class="jumbotron"  style="background-color:#FFA25B;">


<form action="addsupProd" method="post">


<div class="form-row" style="background-color:redm">

	<div class="form-group col-md-6">

		<label><h4 id="ddd">Employee ID:</h4></label>
		
			<select class="form-control col-form-label-sm " name="supId">
			
				<c:forEach items="<%=positonls%>" var="p">
				
					<option  value="${p.supId}" >${p.fName}</option>
					
				</c:forEach>
				
			</select>
	</div>
	
	<br>
	
</div>
	
	<div class="form-group">
  	<label for="exampleFormControlInput5"><h4 id="ddd"> Products : </h4></label>
  	<textarea class="form-control" rows="5" placeholder="Enter your office address here" id="comment" name="address"></textarea>
	</div>
	
	<div class="form-group">
    <label for="exampleFormControlInput5"><h4 id="ddd">Total Price: </h4></label>
    
    <%-- <span style="color:red;"> *Enter with country code without Zero '0' (Eg:009477)</span> --%>
    
    <input type="number" class="form-control" placeholder="Enter Total amount to be paid" name="price">
	</div>
	


<div>
<br>
	<%--<input type="submit"  style="float:right; position:relative; height:45px; width:150px" class="btn btn-primary btn-lg" value="Add"> --%>
	
	<button id="add" type="submit" style="  height:45px;" class="btn btn-primary btn-lg btn-block" value="Add" >Add product</button>
	
	
</div>


<br>
			


	</form>
	
</div>


</div></div>

</div>


	


</section>




	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>