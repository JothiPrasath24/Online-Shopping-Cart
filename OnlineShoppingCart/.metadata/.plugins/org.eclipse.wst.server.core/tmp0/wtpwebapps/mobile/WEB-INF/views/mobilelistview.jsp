 <!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"> -->
	<html>
	<!--add dependence   -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 
<%@page import="com.niit.mback.dao.MobileDao"%>

<%@page import="com.niit.mback.model.MobileModel" %>
 
<%@page import="com.niit.mobile.controller.MobileList" %>
 
<head>
<style type="text/css">

th {
    background-color: indigo;
    color:yellow;
}
</style>

	<meta charset="utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/css/reg.css">
	
	<title>MobileViewList</title>
	
		

</head>

<body>
<jsp:include page="Header.jsp"/>
<br/>


<div class="container">
<div class="row">
   
   <p></p>
   <h1><b><font color="#a04000">Mobile List</font></b></h1>   
   <p> </p><p> </p>
   
       <div class="col-md-10 col-md-offset-1">

           <div class="panel panel-default panel-table">
             <div class="panel-heading">
               <div class="row">
                 <div class="col col-xs-6">
                   <h3 class="panel-title"><b><font color="#d4ac0d">Mobile Data Table</font></b></h3>
                 </div>
                 
               </div>
             </div>
             <div class="panel-body">
               <table class="table table-striped table-bordered table-list">
                 <thead>
                   <tr>
                       <th><em class="fa fa-cog"></em></th>
                       <th class="hidden-xs">ID</th>
                       <th>Name</th>
                        <th>Brand</th>
                       <th>Price</th>
                       <th>Category</th>
                       <th>Supplier</th>
                       <th>Image</th>                                                                        
                   </tr> 
                 </thead>
                 <tbody>
                         
                         <c:forEach items="${list}" var="p">
                         <tr>
                         <td>
                         
                             <a class="btn btn-default" href="mobile_edit?id=${p.id}"><em class="fa fa-pencil"></em></a>
                             <a class="btn btn-danger" href="mobile_delete?id=${p.id}"><em class="fa fa-trash"></em></a>
                           </td>
                           <td class="hidden-xs">${p.id}</td> <!--mobileid  -->
                           <td>${p.name}</td><!--mobilename  -->
                           <td>${p.brand}</td><!--mobilename  -->
                           <td>${p.price}</td> <!--mobileprice  -->
                          <td>${p.category.name}</td> <!--catergoryid & catergory name -->    
                           <td>${p.supplier.name}</td>    <!--supplierid & supplier name -->    
                           <%--  <td>${p.price}</td> <!--mobileprice  --> --%>  
                           <td><img src="./resources/uploads/mobile/${p.image}"  class="img-rounded" alt="${p.image }" width="75px" height="50px"/> </td>         
                           <tr>       
                         </c:forEach>
                       </tbody>
               </table>
           
             </div>
             <div class="panel-footer">
               <div class="row">
                 <div class="col col-xs-4">Page 1 of 5
                 </div>
                 <div class="col col-xs-8">
                   <ul class="pagination hidden-xs pull-right">
                     <li><a href="#">1</a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                   </ul>
                   <ul class="pagination visible-xs pull-right">
                       <li><a href="#">«</a></li>
                       <li><a href="#">»</a></li>
                   </ul>
                 </div>
               </div>
             </div>
           </div>

</div></div>
	</div>
	<jsp:include page="Footer.jsp"/>
    
</body>
</html>