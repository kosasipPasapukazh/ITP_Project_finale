<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

     <style type="text/css">
     
     .navbar{
       margin:0; 
     }

     

      section .define{
        height: 700px;
      }
     
  
     </style>
    <title>Home-page</title>
  </head>

  <body style="background-color:white">
    
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
	</nav>
				<!--/.Navbar-->
    				
      <section style="margin-top: 40px">
        
  <div class="container">
    <div class="jumbotron">
     
     <form class="well form-horizontal" method="post">
    
      <table class="table table-striped">
      <h1 align="center" >UPDATE EMPLOYEE</h1>
      
      </br>
      
             <tr>
                <td colspan="1">
                   
           
                      <fieldset>
						
						<div class="form-group">
						      <label class="col-md-4 control-label">EID</label>
						      <div class="col-md-8 inputGroupContainer">
						        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeEID" name="UpdEmployeeEID" placeholder="EID" class="form-control" required="true" type="text" required></div>
						            </div>
						        </div>
						        
						        
						 <div class="form-group">
						      <label class="col-md-4 control-label">Password</label>
						      <div class="col-md-8 inputGroupContainer">
						        <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeePassword" name="UpdEmployeePassword" placeholder="Password" class="form-control" required="true" type="password" required></div>
						            </div>
						        </div>
						
						
						            
                         <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeFirstName" name="UpdEmployeeFirstName" placeholder="First Name" class="form-control" required="true"  type="text" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">last Name</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeLastName" name="UpdEmployeeLastName" placeholder="Last Name" class="form-control" required="true" type="text" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">NIC</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-Updateon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeNIC" name="UpdEmployeeNIC" placeholder="NIC" class="form-control" required="true" type="text" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">DOB</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeDOB" name="UpdEmployeeDOB" placeholder="DOB" class="form-control" required="true" type="" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">Gender</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeGender" name="UpdEmployeeGender" placeholder="Gender" class="form-control" required="true" type="text" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">Position</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeePosition" name="position" placeholder="position" class="form-control" required="true" type="text" required></div>
                            </div>
                         </div>
             
             <div class="form-group">
                            <label class="col-md-4 control-label">Department</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-Updateon"><i class="glyphicon glyphicon-user"></i></span><input id="UpdEmployeeDepartment" name="UpdEmployeeDepartment" placeholder="department" class="form-control" required="true" value="" type="text" required></div>
                            </div>
                         </div>
             
                         <div class="form-group">
                            <label class="col-md-4 control-label">Address</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span><input id="UpdEmployeeAddress" name="UpdEmployeeAddress" placeholder="Address" class="form-control" required="true" value="" type="text" required></div>
                            </div>
                         </div>
             
                        
             
                       
                         <!--
             <div class="form-group">
                            <label class="col-md-4 control-label">Country</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group">
                                  <span class="input-group-addon" style="max-width: 100%;"><i class="glyphicon glyphicon-list"></i></span>
                                  <select class="selectpicker form-control">
                                     <option>A really long option to push the menu over the edget</option>
                                  </select>
                               </div>
                            </div>
                         </div>
             -->
             
             
                      </fieldset>
            
                </td>
        
                <td colspan="1">
                   
                      <fieldset>
                         
             <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span><input id="UpdEmployeeEmail" name="email" placeholder="Email" class="form-control" required="true" type="email" required></div>
                            </div>
                         </div>
             
                         <div class="form-group">
                            <label class="col-md-4 control-label">Phone Number</label>
                            <div class="col-md-8 inputGroupContainer">
                               <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span><input id="UpdEmployeePhoneNumber" name="phoneNumber" placeholder="Phone Number" class="form-control" required="true" type="number" required></div>
                            </div>
                         </div>
             
                      </fieldset>
            
            
            
                   
                </td>
             </tr>
       
       </table>
       
        <input type="submit" name="Update" class="form-control" value="Update"  id="submit" />

        <br/>
  
        <input type="reset" value="Reset" class="form-control" />
        
        <br/>
        
        
        
            
          
    </form>
        
        <button type="button" class="form-control">Back</button>
      
  </div>
  </div><br/>
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