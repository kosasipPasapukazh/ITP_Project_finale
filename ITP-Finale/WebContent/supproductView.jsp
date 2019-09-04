
<%@page import="com.model.supProduct"%>
<%@page import="com.service.supProductServiceImp"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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


</style>



</head>
<body style="background-color:white">
<jsp:include page="header.jsp"></jsp:include>
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

<br><br><br>

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



<div style="width:1000px; margin-left:auto; margin-right:auto;" class="container" id="viewTable">

<table  class="table table-striped">

<%


supProductServiceImp ls=new supProductServiceImp();
/* request.setAttribute("Allpost",allot.getAll()); */
List <supProduct> otl=ls.getAll();

%>

<marquee direction="down" scrolldelay= 450 ><h4>You can update & delete while viewing the list.</h4></marquee>

<br><br>

<thead>
<tr >
	<th scope="col" style="width: 16.66%">Supplier ID</th>
	<th scope="col" style="width: 16.66%">Product</th>
	<th scope="col" style="width: 16.66%">Update Here</th>
	<th scope="col" style="width: 16.66%">Delete Here</th>
</tr>
	

<c:forEach items="<%=otl%>" var="OT">
<%-- important use<= not ${ for variables.'${' used for request obj retrieves --%>

<tr>

<th scope="row">${OT.supId}</th>
<td>${OT.supProduct}</td>


<td>
	<button class="btn btn-success btn-sm btn-block" type="button" style="float:right;" ><a id="ccc" href="supplierProductUpdate.jsp?supId=${OT.supId}">Update</a></button>
	
</td>

<td>
	<button class="btn btn-danger btn-sm " type="button" style="float:right;"><a id="ccc" href="deletesupProduct?supId=${OT.supId}">Delete</a></button>
</td>


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
</section>
</body>
</html>