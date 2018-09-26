<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<link rel="stylesheet" href="./resources/css/mobile-details.css">
 <link rel="stylesheet" href="./resources/js/mobile-details.js">
 <link rel="stylesheet" href="./resources/css/reg.css">



<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mobile Details List</title>
</head>
<body>
<jsp:include page="Header.jsp"/>
<br/>
<br/>
<br/>
<br/>
<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
			<br/>
			<br/><img id="item-display" src="./resources/uploads/mobile/${mobile.image}" alt="" width="400" height="400"></img>
						
					
				
				<div class="col-md-7">
					<div class="product-title">${mobile.name}</div>
					<div class="product-desc">${mobile.description}</div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">${mobile.price}</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<form action="addCart" method="post">
					Enter Quantity : <input type="number" name="q" required/>
					<input type="hidden" name="id" value="${mobile.id}"/>
					<div class="btn-group cart">
					   
						<button type="submit" class="btn btn-success">
							Add to cart 
						</button>
						
					</div>
					</form>
					<div class="btn-group wishlist">
					<a href="viewcart">
						<button type="button" class="btn btn-danger">
							View cart 
						</button>
						</a>
					</div>
				</div>
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
																
							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
								
						</section>
						
					</div>
					<div class="tab-pane fade" id="service-three">
												
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
  <br/>
	<jsp:include page="Footer.jsp"/>


</body>
</html>