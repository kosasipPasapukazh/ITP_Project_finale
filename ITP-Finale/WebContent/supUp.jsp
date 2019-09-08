
<%@page import="com.model.Supplier"%>
<%@page import="com.service.supplierServiceImp"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title></title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


</head>
<body style="background-color:white">
<jsp:include page="header.jsp"></jsp:include>
<section>

<div class="container">
<div class="jumbotron">

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

<h3>Update supplier details</h3> 

<% 

//session;

int supId=1;

supplierServiceImp sp=new supplierServiceImp(); 

ArrayList <Supplier> ls = sp.getSupplierInfo(supId);





%>


<form method="post" action="AddSupplier">

<br><br>

  <div class="row">
  	
    <div class="col">
    <label for="exampleFormControlSelect1">First Name:</label>
      <input type="text" class="form-control" placeholder="First name" name="fName" value="">
    </div>
    
    <br>
    
    <div class="col">
    <label for="exampleFormControlSelect2">Last Name:</label>
      <input type="text" class="form-control" placeholder="Last name" name="lName">
    </div>
    
  </div>
  
  	<br>
   <label for="exampleFormControlSelect3">Password:</label>
   	<input type="password" id="myInput" placeholder="Password" name="password">

	<br>
	
<!-- An element to toggle between password visibility -->
<input type="checkbox" onclick="myFunction()">Show Password


<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
} 
</script>

	<br>
	<br>
	
    <div class="form-group">
    <label for="exampleFormControlSelect3">Select your Brand:</label>
    <select class="form-control" id="exampleFormControlSelect1" name="brand">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  	</div>
  
  <br>
  
  	<div class="form-group">
  	<label for="comment">Address:</label>
  	<textarea class="form-control" rows="5" id="comment" name="address"></textarea>
	</div>
 
 <br>
  
    <div class="form-group">
    <label for="exampleFormControlInput4">Email address:</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email">
  	</div>
 
 <br>
 
  	<div class="form-group">
    <label for="exampleFormControlInput5">Contact Number: *Enter with country code (Eg:0094)</label><br>
    <input type="text" class="form-control" placeholder="Telephone" name="contact">
	</div>

  <br>

 
  <%-- 	<div class="form-group">
    <label for="exampleFormControlFile1">Example file input</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  	</div>
 --%>
 
  
<button type="submit"  style="float:right; position:relative; height:55px; width:200px" class="btn btn-primary btn-lg">Submit</button>



</form>

</div>
</div>
</section>

	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>