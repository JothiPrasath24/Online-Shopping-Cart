<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<link rel="stylesheet" href="./resources/css/mobile.css">
<link rel="stylesheet" href="./resources/css/caroualresponsive.css">
 

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    

<title>offers</title>
</head>
<body>

<jsp:include page="Header.jsp"/>

<h3 class="modtitle"><span><b><font color="green">Today Deals!!!</font></b></span></h3>
<div class="item">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  
                  <img src="${pageContext.request.contextPath}/resources/images/gn.jpg" alt="slider 01">
                  <div class="team_columns_item_caption">
                     <h4>Samsung</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.13,500/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/ip8.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Iphone 8 Plus</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.25,500/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/la.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Lava</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.7,500/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/mm.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Micromax</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.6999/-</p>
                  </div>
               </div>
            </div>
            







<h3 class="modtitle"><span><b><font color="red">November Deals!!!</font></b></span></h3>
<div class="item active">
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image">
                  <img src="${pageContext.request.contextPath}/resources/images/t5.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Techmo</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.5999/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-1">
                  <img src="${pageContext.request.contextPath}/resources/images/x1.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Gionee</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.11,500/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-2">
                  <img src="${pageContext.request.contextPath}/resources/images/z1.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>Sony</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.15,000/-</p>
                  </div>
               </div>
               <div class="col-xs-12 col-sm-6 col-md-3 team_columns_item_image cloneditem-3">
                  <img src="${pageContext.request.contextPath}/resources/images/gn.jpg" alt="slider 02">
                  <div class="team_columns_item_caption">
                     <h4>samsung</h4>
                     <hr>
                     <h5>Mobile</h5>
                     <p>Rs.19,500/-</p>
                  </div>
               </div>
            </div>

 

<jsp:include page="Footer.jsp"/>	



</body>
</html>