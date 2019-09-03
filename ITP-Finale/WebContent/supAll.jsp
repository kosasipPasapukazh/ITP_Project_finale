

<%@page import="com.model.Supplier"%>
<%@page import="com.service.supplierServiceImp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>


<%@  taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"  %>  
    
<!DOCTYPE html>
<html>


<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/test.css" rel="stylesheet" type="text/css">


<style>

	#ccc{
	
		color:white;
	
	}
	
	#ccc:hover{
	
		color:white;
		text-decoration:none;
	
	}

.glow {
  font-size: 30px;
  color: black;
  text-align:left;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}

</style>



</head>
<body>
<section>



<div class=container>
<div class=jumbotron>

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


<div id="alert">

<%if((Integer)session.getAttribute("rowsOT")!=null){%>
<%int rows=(Integer)session.getAttribute("rowsOT");%>
<%if(rows>0){%>


<div class="alert alert-danger alert-dismissible fade show" id="Alert" role="alert">

<p id="error">success.<%=rows%> rows Deleted <p>

<button type="button" class="close" data-dismiss="alert" aria-label="Close">

<span aria-hidden="true">&times;</span>

</div>


<%
session.setAttribute("rowsOT", null);
}
else{%>



<div class="alert alert-danger alert-dismissible fade show" id="Alert" role="alert">

<p id="error">error. <%=rows%> rows effected.entry may exist </p>

<button type="button" class="close" data-dismiss="alert" aria-label="Close">

<span area-hidden="true">&times;</span>

</div>


<%
session.setAttribute("rowsOT", null);
}%>

<%}%>


</div>



<div class="container"  style="width:1000px; margin-left:auto; margin-right:auto;" id="viewTable">

<div class=jumbotron style="background-color:#ACA6A6;">


<table  class="table table-striped" style="background-color:#FFFFFF;">

<%
supplierServiceImp ls = new supplierServiceImp();
List <Supplier> otl = ls.getAll();
%>

<h3 class="glow"; >Supplier List.</h3>

<br><br>

<thead>
<tr >
	<th scope="col" style="width: 16.66%">Supplier ID</th>
	<th scope="col" style="width: 16.66%">Product</th>
	<th scope="col" style="width: 16.66%">Update Here</th>
	<th scope="col" style="width: 16.66%">Delete Here</th>
	<th scope="col" style="width: 16.66%">Supplier ID</th>
	<th scope="col" style="width: 16.66%">Product</th>
	<th scope="col" style="width: 16.66%">Update Here</th>
	<th scope="col" style="width: 16.66%">Delete Here</th>
	
</tr>
	

<c:forEach items="<%=otl%>" var="OT">
<%-- important use<= not ${ for variables.'${' used for request obj retrieves --%>

<tr>

<th scope="row">${OT.supId}</th>
<td>${OT.fName}</td>
<td>${OT.password}</td>
<td>${OT.brand}</td>
<td>${OT.category}</td>
<td>${OT.address}</td>
<td>${OT.email}</td>
<td>${OT.contact}</td>

</tr>

</c:forEach>

</thead>
</table>

</div>

<div id="scripts">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" 
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" 
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" 
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</div>

</div>

</div>
</div>
</section>
</body>
</html>