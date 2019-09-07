<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%--
<style type="text/css">

     body{
           margin: 0;
          
           background-color:#00F3FF;
     }
      
      header {
           height: 150px;
           background-color: rgba(1,1,1,0.7);

      }

		.img2{
      	height: 50px;
      	width: 50px;
      	margin-top: 30px;
      	border-radius: 50%;
        overflow-y: hidden;
      }
      
      .img1{
      	height: 100px;
      	width: 100px;
      	margin-top: 10px;
      	border-radius: 0%;
        overflow-y: hidden;
        margin-left:10px;
      }
      
      </style> --%>
      
      
      
      <style>
* {box-sizing: border-box;}

  html,body{
  
      width: 100%;
      height: 100%;
      margin:0;
      padding: 0;
      overflow-x: hidden; 
      font-family: Arial, Helvetica, sans-serif;
      background-color: white;
      
     }

.header {

  overflow: hidden;
  background-color: #001f3f;
  padding: 20px 10px;

}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 30px; 
}

#headd {

  padding: 12px;
  text-decoration: none; 
   font-size: 40px;
  line-height: 25px;

}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color:;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
  margin-right:50px;
}

      .img1{
      	height: 100px;
      	width: 100px;
      	margin-top: 10px;
      	border-radius: 0%;
        overflow-y: hidden;
        margin-left:10px;
      }
      
      .img2{
      	height: 100px;
      	width: 100px;
      	margin-top: 10px;
      	border-radius: 0%;
        overflow-y: hidden;
      }

@media screen and (max-width: 500px) {

  .header a {
    float: none;

  }
  

  .header-right {
    float: none;
    margin-top:0px;
    margin-left:350px;
  }
  
  #headd {

   text-decoration: none; 
   text-align:left;
   font-size: 20px;


}
  
        .img1{
      	height: 100px;
      	width: 100px;
      	margin-top: 10px;
      	border-radius: 0%;
        overflow-y: hidden;
        align:left;
      }
      
      
  
  
  
  
  
  
}



</style>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
</head>
<body>

      <%--    <header class="container-fluid">
         <div class="row">
         <div class="column">
         		<img class="img1" src="img/comLogo.png">
         </div>
         <div class="column">
				<p style="font-weight:800;color:white;font-size: 40px; margin-top: 30px;">ComputeX </p>
         </div>
         <div class="column">
                <img class="img2" src="img/userlogo.png" style="margin-left:1000px;">
                <p style="color:white; margin-left:1000px;">Welcome </p>
          </div>
          </div>   
         </header>

	--%>
	
	
	
	
	
	
	
	
	
	<div class="header">
	<div>
			
			<a href="#default" class="logo">
				<img class="img1" src="img/nice.png">
			</a>
			
			
			<a href="#default" class="logo">
					<p id="headd"style="font-weight:800; color:white; margin-top: 30px;">
						ComputeX 
					</p>
			</a>
			
			
  </div>
  
  <div class="header-right">
                <img class="img2" src="img/userlogo.png">
                <p style=" color:white; font-size: 20px;">&nbsp&nbspWelcome </p>
  </div>
</div>
	
	
	
	
	
	
	
	

</body>
</html>