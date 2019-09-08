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

<br><br><br><br><br><br>
<div class="three">

<button type="button" class="btn btn-primary btn-lg btn-block"><a id="ccc"href="supCat-01.jsp">Custom Computer Part Suppliers</a></button>

<br><br>

<button type="button" class="btn btn-secondary btn-lg btn-block"><a id="ccc" href="supCat-02.jsp">Seperate Computer Part Suppliers</a></button>

<br><br>

<button type="button" class="btn btn-primary btn-lg btn-block"><a id="ccc" href="supCat-03.jsp">Service Equipment Suppliers</a></button>

<br><br><br><br><br><br><br><br><br><br>

</div>
</div>
	</div>
			
</section>



	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>