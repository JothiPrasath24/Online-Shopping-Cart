<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 
<link rel="stylesheet" href="./resources/css/mobile.css"> -->

<link rel="stylesheet" href="./resources/css/reg.css">


<title>Registration Page</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<br/>
	<br/>
<img src="./resources/images/reg.jpg" alt="Sony" style="width:15%">	
	<!-- <h3 class="modtitle"><span><font color="green">Registration Page</font></span></h3> -->
	<hr>
	 
	<center>
	<form action="registration">
  <div class="containers">
  <table>
  <tr>
    <td><label><b><font color="blue">UserId</font></b></label></td><td>
    <input type="text" placeholder="Enter UserID" name="userId" required class="form-control" focus><td>
    </tr><tr>
     
    <td>
    <label><b><font color="blue">Name</font></b></label></td><td>
    <input type="text" placeholder="Enter Name" name="name" required class="form-control"><td>
   </tr>
    
    <tr>
    <td>
    <label><b><font color="blue">Password</font></b></label></td><td>
    <input type="password" placeholder="Enter Password" name="password" required class="form-control"><td>
	</tr>
	
    <tr>
    <td>
    <label><b><font color="blue">Repeat Password</font></b></label></td><td>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required class="form-control"><td>
    </tr>
    
    <tr>
    <td>
    <label><b><font color="blue">Age</font></b></label></td><td>
    <input type="text" placeholder="Enter Age" name="age" required class="form-control"><td>
    </tr>
    
    <tr>
    <td>
    <label><b><font color="blue">Gender</font></b></label></td><td>
    <input type="radio" name="gender" checked/>M<input type="radio" name="gender"/>F</td>
    </tr>
    
    <tr>
    <td>
    <label><b><font color="blue">Email</font></b></label></td><td>
    <input type="text" placeholder="Enter Email" name="email" required class="form-control"><td>
	</tr>
 
    <tr>
    <td><label><b><font color="blue">Phone</font></b></label></td>
	<td><input type="text" placeholder="Enter Address" name="phone" required class="form-control"></td>
	</tr>
	 
    <tr>
    <td><label><b><font color="blue">City</font></b></label></td>
	<td><input type="text" placeholder="Enter Address" name="address" required class="form-control"></td>
	</tr>
	 
    
  
   </table>
<br/>
<br/>
<br/>

    <div class="clearfix">
    <button type="submit" class="btn btn-success"  data-toggle="tooltip" data-placement="top" title="Register Me!!!"><i>Register Me!</i></button>
    <button type="button" class="btn btn-danger"  data-toggle="tooltip" data-placement="top" title="Cancel">Cancel</button>
      <!-- <button type="button" class="loginbtn"  >Cancel</button>
      <button type="submit" class="loginbtn" >SignUp</button> -->
    </div>
  </div>
</form>
</center>
	
	
	<jsp:include page="Footer.jsp" />
</body>
</html>