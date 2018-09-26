 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
	 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.niit.mback.dao.CategoryDao"%>

<%@page import="com.niit.mback.model.CategoryModel" %>
 
<%@page import="com.niit.mobile.controller.CategoryList" %>
	 
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
	<title>Category View List</title>
	
</head>

<body>
	<jsp:include page="Header.jsp"/>
<br/>


<div class="container">
<div class="row">
   
   <p></p>
   <h1><b><font color="blue">CategoryList</font></b></h1>   
   <p> </p><p> </p>
   
       <div class="col-md-10 col-md-offset-1">

           <div class="panel panel-default panel-table">
             <div class="panel-heading">
               <div class="row">
                 <div class="col col-xs-6">
                   <h3 class="panel-title"><b><font color="orange">Category Data Table</font></b></h3>
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
                       
                                                                                           
                   </tr> 
                 </thead>
                 <tbody>
                         
                         <c:forEach items="${clist}" var="c">
                         <tr>
                         <td>
                            <a class="btn btn-default" href="category_edit?id=${c.id}"><em class="fa fa-pencil"></em></a>
                             <a class="btn btn-danger" href="category_delete?id=${c.id}"><em class="fa fa-trash"></em></a>
                           </td>
                           <td>${c.id}</td>
                           <td>${c.name}</td>
                             
                         
                           
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