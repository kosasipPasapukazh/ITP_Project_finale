
<%@page import="com.service.supplierServiceImp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

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

	#ccc{
	
		color:white;
	
	}
	
	#ccc:hover{
	
		color:white;
		text-decoration:none;
	
	}


</style>




</head>



	<body>
	
	
	
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


<%


List positonls;//for the emplyee Positions
supplierServiceImp st2=new supplierServiceImp();

System.out.println(st2.getSupNameID());
positonls=st2.getSupNameID();



%>

<br><br>

<h3 style="float-left:500px;"> Supplier Product Addition </h3> 

<form action="addsupProd" method="post">


<br><br>
<div class="form-row" style="background-color:redm">

	<div class="form-group col-md-6">

		<label><h4>Employee :</h4></label>
		
			<select class="form-control col-form-label-sm " name="supId">
			
				<c:forEach items="<%=positonls%>" var="p">
				
					<option  value="${p.supId}" >${p.fName}</option>
					
				</c:forEach>
				
			</select>
	</div>
	
	<br><br><br>
	
</div>
	
	
<div class="form-group">
    <label for="exampleFormControlInput5"><h4>Product : </h4></label>
   <br>
    		<input type="text" class="form-control" placeholder="Product" name="supProduct" required>
	</div>

<div>
<br>
	<%--<input type="submit"  style="float:right; position:relative; height:45px; width:150px" class="btn btn-primary btn-lg" value="Add"> --%>
	
	<button type="submit" style="  height:45px; " class="btn btn-primary btn-lg btn-block" value="Add" >Add product</button>
	
	
</div>


<br><br>
		
<br>	


	</form>
	
	<div>

	   <label for="exampleFormControlInput5">
	   <h4>
	   
	   			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	   			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	   			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	   			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	   
	   
	   		<i class="fa fa-hand-o-down"></i> 
	
	   			Click to VIEW Product List 
	   		
	   		<i class="fa fa-hand-o-down"></i>
	   		
	   	</h4></label>
	   
	   
	   
	<button  type ="button"  style="height:45px;" class="btn btn-primary btn-lg btn-block">
			
			<a id="ccc"  href="supproductView.jsp">View</a>
	
	</button>
	
</div>

<br><br><br><br><br><br><br><br><br>



</div>

</div>

	
	
</section>

</body>

</html>