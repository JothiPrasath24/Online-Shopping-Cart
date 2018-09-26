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
<br/>


<div class="container">
<div class="row">
<h2><font color="blue">Edit Mobile Details</font></h2>
<hr/>
  <form action="mobile_update"  method="post"  enctype="multipart/form-data">
    <div class="form-group">
      <label for="p_id">Mobile  ID :</label>
      <input type="number" class="form-control" id="p_id" placeholder="Enter Mobile ID" name="id" value="${mobile.id}">
    </div>
    <div class="form-group">
      <label for="p_name">Mobile Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="Enter Mobile Name " name="name" value="${mobile.name}">
    </div>
     <div class="form-group">
      <label for="p_name">Mobile Brand:</label>
      <input type="text" class="form-control" id="p_name" placeholder="Enter Mobile Name " name="name" value="${mobile.brand}">
    </div>
    <div class="form-group">
      <label for="p_desc">Mobile Description :</label>
      <input type="text" class="form-control" id="p_desc" placeholder="Enter Mobile Description " name="desc"value="${mobile.description}" >
    </div>
    <div class="form-group">
      <label for="p_price">Mobile Price :</label>
      <input type="number" class="form-control" id="p_price" placeholder="Enter Mobile Price " name="price"value="${mobile.price}" >
    </div>
    <div class="form-group">
  <label class="col-md-4 control-label" for="c_id" >Select Category</label>
  <div class="col-md-4">
    <select id="c_id" class="form-control" name="c_id">
      <c:forEach var="list" items="${clist}">

                <option value="${list.id}">${list.name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<div class="form-group">
  <label class="col-md-4 control-label" for="s_id" >Select Supplier</label>
  <div class="col-md-4">
    <select id="s_id" class="form-control" name="s_id">
      <c:forEach var="list" items="${slist}">

                <option value="${list.id}">${list.name}</option>

            </c:forEach>
    </select>
  </div>
</div>
<br/>
<br/>
<br/>

<div class="form-group">
      <label for="img">Upload Image:</label>
      <input type="file" id="img" name="file">
    </div>
    <button type="submit" class="btn btn-primary" >Save</button>
  </form>
          
           

</div></div>
	
<jsp:include page="Footer.jsp" />  
</body>
</html>