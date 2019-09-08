
<%@page import="com.DBconnection.DBconnection"%>
<%@page import="com.model.supProduct"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<body style="background-color:white">
<jsp:include page="header.jsp"></jsp:include>
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


<% int supId=Integer.parseInt(request.getParameter("supId"));

System.out.println(supId);

Connection connection = new DBconnection().getconnection();

String query1 = "select * from supproduct where supId = ?";
PreparedStatement ps= connection.prepareStatement(query1);

ps.setInt(1,supId);

ResultSet rs=ps.executeQuery();

rs.next(); //Importent putthe cursor in the next line befor execution

supProduct sup=new supProduct();

sup.setSupId(rs.getInt("supID"));
sup.setSupProduct(rs.getString("supproduct"));

%>

<br><br>
<h3 style="float-left:500px;"> Supplier Product Update </h3> 

<br><br>
<form action="updateSupProduct" method="post">


<div class="form-group">
    <label for="exampleFormControlInput5"><h4>Supplier ID : </h4></label><br>
    <input type="text" class="form-control" placeholder="Product" name="supId" value="<%=sup.getSupId()%>" readonly>
	</div>	
	
	
	
<div class="form-group">
    <label for="exampleFormControlInput5"><h4> Product : </h4></label><br>
    <input type="text" class="form-control" placeholder="Product" name="supProduct" value="<%=sup.getSupProduct()%>" required>
	</div>

<br>

<div>

<%--><input type="submit"  style="float:right; position:relative; height:55px; width:200px" class="btn btn-primary btn-lg" value="Add">--%>

<button type="submit" style="  height:45px; " class="btn btn-primary btn-lg btn-block" value="Add" >Update product</button>


</div>




	</form>	

<br><br><br><br>

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


	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>