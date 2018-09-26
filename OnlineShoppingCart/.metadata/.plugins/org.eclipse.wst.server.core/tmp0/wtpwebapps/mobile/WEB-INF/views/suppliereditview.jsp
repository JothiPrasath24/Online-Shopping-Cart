<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

th {
    background-color: indigo;
    color:yellow;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<title>Supplier Edit View</title>
</head>
<body>
<jsp:include page="Header.jsp"/>
<br/>
<br/>

<div class="container">
<div class="row">
<h2><b><font color="brown">Edit Supply Details</font></b></h2>
<hr/>
  <form action="supplier_update"  method="post"  enctype="multipart/form-data">
    <div class="form-group">
      <label for="p_id">Supplier  ID :</label>
      <input type="number" class="form-control" id="p_id" placeholder="Enter Mobile ID" name="id" value="${supplier.id}">
    </div>
    <div class="form-group">
      <label for="p_name">Supplier Name :</label>
      <input type="text" class="form-control" id="p_name" placeholder="Enter Mobile Name " name="name" value="${supplier.name}">
    </div>
    <button type="submit" class="btn btn-primary" >Save</button>
  </form>
           

</div></div>
	
<jsp:include page="Footer.jsp" /> 

</body>
</html>