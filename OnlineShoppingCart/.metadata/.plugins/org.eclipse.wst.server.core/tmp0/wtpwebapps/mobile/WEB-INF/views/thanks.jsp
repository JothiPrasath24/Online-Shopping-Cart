<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thanks Page</title>

	<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="./resources/js/jquery.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="./resources/css/jquery.dataTables.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="./resources/css/mobile-details.css">
 <link rel="stylesheet" href="./resources/js/mobile-details.js">
 <link rel="stylesheet" href="./resources/css/reg.css">
</head>
<body>
<jsp:include page="Header.jsp"/>
<br>
<br>
<br>
<!-- <h1> Dear Customer,</h1>
<center>
<a href="./">  
<div class="btn-group cart">
					   
						<button type="submit" class="btn btn-success">
							Home
						</button>
						
					</div>
                    </a>
<br/>
<br/>
 <img src="./resources/images/th.jpg" alt="Sony" style="width:20%"> 
 <br/>
<img src="./resources/images/thanks.png" style="width:80%">


</center> -->
<div class="jumbotron text-xs-center">
  <h1 class="display-3">Thank You!</h1>
  <p class="lead"><strong>Please check your email</strong> for further instructions on how to complete your account setup.</p>
  <hr>
  <p>
    Having trouble? <a href="contact">Contact us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="./" role="button">Continue to homepage</a>
  </p>
</div>
<jsp:include page="Footer.jsp"/>
</body>
</html>