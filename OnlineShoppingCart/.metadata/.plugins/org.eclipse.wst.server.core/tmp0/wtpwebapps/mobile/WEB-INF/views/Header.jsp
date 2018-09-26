<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<!--   <link rel="stylesheet" href="./css/shoe.css">-->
 

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
</head>
<body>
			<nav class="navbar navbar-light" style="background-color:#d3d3d3;" role="navigation">		
			<div class="navbar-header">

					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					
					<img alt="Logo"
							src="./resources/images/Logo.png" width=50px; height=50px; />
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
					<li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span><b> Home</b></a></li>
					
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-phone "></span><b> ProductList</b><strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<br>
								<c:forEach items="${clist}" var="p">
								<li><a href="mobilelistindividual?id=${p.id}">${p.name}</a></li>
								</br>
								</c:forEach>
							</ul></li>
						 
							 
  <li class="active"><a href="add"><span class="glyphicon glyphicon-wrench"></span><b> Admin</b></a></li>
  					<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-list-alt"></span><b> Admin-List</b><strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="categorylist">Category List</a></li>
								<li><a href="supplierlist">Supplier List</a></li>
								<li><a href="mobilelistview">Mobile List</a></li>
								
							</ul></li>
					</ul>
				<ul class="nav navbar-nav navbar-right">
				 
				 <li><a href="reg"><span class="glyphicon glyphicon-user"></span><b> Sign-Up</b></a></li>
                 <li><a href="login"><span class="glyphicon glyphicon-log-in"></span><b> Log-in</b></a></li>
				 </ul>
				 </div>
				 <!-- 
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="reg"><b>Sign Up</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
</div>

 -->	
 
 
 		</nav>

</body>
</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />
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

<!--   <link rel="stylesheet" href="./css/shoe.css">-->
 

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
</head>
<body>



<nav class="navbar navbar-default navbar-inverse" role="navigation">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
							
			<a class="navbar-brand" href="./">				
				<%-- <img src='<c:url value="/resources/images/logo-homee1.jpg" />' width="50px" height="25px" class="img-responsive"/> --%>
			       
			    <img src="${pageContext.request.contextPath}/resources/images/Logo.png"  width="50px" height="50px" class="img-responsive"/>
                     </a>	
			 
		</div>		
		
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
			<li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span><b> Home</b></a></li>
				<!-- 
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Products <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li>Category 1</li>
						<li>Category 1</li>
						<li>Category 1</li>
					</ul>
				</li> -->
				
				<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Sport<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="men">Men</a></li>
							 
							</ul></li> -->
				 
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">ProductList<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<br>
								<c:forEach items="${clist}" var="p">
								<li><a href="mobilelistindividual?id=${p.id}">${p.name}</a></li>
								</br>
								</c:forEach>
							</ul></li>
							
					<li><a href="<c:url value="admin/add"/>" role="button" aria-haspopup="true"
					aria-expanded="false">List</a></li>
			</ul>
		
			
				<c:if test="${pageContext.request.userPrincipal.name  == 'poorna@gmail.com'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                 </c:if>
                 </ul>
			  <ul class="nav navbar-nav navbar-right">
			  <c:if test="${pageContext.request.userPrincipal.name == null }">
					<li>
					<a href=' <c:url value="/login" />'>Login</a>
					</li>
				<li><a href="reg">Signup</a></li>
				
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name  != null}">
                               <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
	              				<li><a href='<c:url value="/logout" />'>Signout</a></li>
                 </c:if>
				
				</ul>
		</div>		
	</div>
</nav>






