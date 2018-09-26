<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   
    <link href="./style.css" rel="stylesheet" type="text/css"  />
    <link rel="stylesheet" href="bootstrap.min.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
   
   <link rel="stylesheet" href="./resources/css/mobile-details.css">
 <link rel="stylesheet" href="./resources/js/mobile-details.js">
 <link rel="stylesheet" href="./resources/css/reg.css">
   
   
</head>
<body>
 <jsp:include page="Header.jsp"/>
 
<br/>

<div class="container">

<h1><center><b>Invoice</b></center></h1>
<hr>
<img src="${pageContext.request.contextPath}/resources/images/invoice.png" alt="OPPO" style="width:10%;">
<center>
<form method="get" action="payment">
	<h3><em><b>Name : ${name}</b></em></h3>
	<h3><em><b>Shipping Address : ${add}</b></em></h3>
	<h3><em><b>Phone : ${phone}</b></em></h3>
	<h3><em><b>Email : ${email}</b></em></h3>
	<h3><em><b>Total:<i class="fa fa-inr"></i>  ${tot}</b></em></h3><%-- 
	<input type="hidden" name="tot" value="${tot}" /> --%>
	<!-- <a href="payment"><button type="button" class="btn btn-primary">Confirm</button></a> -->
	<button type="submit" class="btn btn-primary">Confirm</button>
	</center>
	</div>
	<input type="hidden" name="tot" value="${tot}" />
</form>


	 <jsp:include page="Footer.jsp"/>
    
</body>
</html>