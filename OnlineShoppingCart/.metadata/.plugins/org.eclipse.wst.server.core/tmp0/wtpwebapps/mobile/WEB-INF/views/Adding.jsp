<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %>
<%@page import="com.niit.mback.model.CategoryModel" %>
 <%@page import="com.niit.mback.model.SupplierModel" %>

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



<link rel="stylesheet" href="./resources/css/mobile-details.css">
 <link rel="stylesheet" href="./resources/js/mobile-details.js">
 <link rel="stylesheet" href="./resources/css/reg.css">

<title>Adding List</title>
</head>
<body>
<body>
<jsp:include page="Header.jsp"/>
  
  <a class="btn btn-primary" href="categorylist" role="button">Category List</a>
 <a class="btn btn-success" href="supplierlist" role="button">Supplier List</a>
 <a class="btn btn-warning" href="mobilelistview" role="button">Mobile List</a> 
<!--  
		 
	 <div class="container">
  <h2>ADD Category</h2>
 
  <form action="category">
    <div class="form-group">
      <label for="usr">Category ID:</label>
      <input type="text" class="form-control"  placeholder="Enter Category Id" id="cid" name="cid">
    </div>
    <div class="form-group">
      <label for="pwd">Category Name:</label>
      <input type="text" class="form-control" placeholder="Enter Category name" id="cn" name="cn">
    </div>
    <input type="submit" value="Submit"/>
  </div>
  </form>
  <hr/>
  <h2>ADD Supplier</h2>
 
  <form action="supplier">
    <div class="form-group">
      <label for="usr">Supplier ID:</label>
      <input type="text" class="form-control"  placeholder="Enter Category Id" id="cid" name="cid">
    </div>
    <div class="form-group">
      <label for="pwd">Supplier Name:</label>
      <input type="text" class="form-control" placeholder="Enter Category name" id="cn" name="cn">
    </div>
    <input type="submit" value="Submit"/>
  </div>
  </form>
</div>-->

<div style="">
<!-- LoginPage Category coding  started -->
            <form class="form-horizontal" action="category" method="post">
             <fieldset>

<!-- Form Name -->
<img src="${pageContext.request.contextPath}/resources/images/cat.jpg" alt="Sony" style="width:10%">
<legend><b><font color="#4a235a">Add Category</font></b></legend>
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn"><font color="#e74c3c">Category Id</font></label>  
  <div class="col-md-4">
  <input id="cid" name="cid" type="text" required placeholder="Category ID" focus>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="#e74c3c">Category Name</font></label>  
  <div class="col-md-4">
  <input id="cn" name="cn" type="text" required placeholder="Category Name">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="addCat" class="btn btn-primary"  data-toggle="tooltip" data-placement="top" title="Add">Add</button>
     <button id="submit" name="submit" value="cancelCat" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Cancel">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
 
 <!-- LoginPage supplier coding  started -->
    <form class="form-horizontal" action="supplier" method="post">
             <fieldset>

<!-- Form Name -->

<b><legend><font color="#4a235a">Add Supplier</font></legend></b>
<img src="${pageContext.request.contextPath}/resources/images/sup.jpg" alt="Sony" style="width:10%">
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn"><font color="orange">Supplier Id</font></label>  
  <div class="col-md-4">
  <input name="cid" type="text" required  placeholder="Supplier ID" focus>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="orange">Supplier Name</font></label>  
  <div class="col-md-4">
  <input name="cn" type="text" required placeholder="Supplier Name">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="supAdd" class="btn btn-primary" data-toggle="tooltip" data-placement="top" title="Add">Add</button>
     <button id="submit" name="submit" value="supCancel" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Cancel">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
 <!-- LoginPage Product Coding  Started -->
 <form class="form-horizontal" action="mobile/submit" method="post" enctype="multipart/form-data"">
             <fieldset>

<!-- Form Name -->
<b><legend><font color="#4a235a">Add Product</font></legend></b>
<img src="${pageContext.request.contextPath}/resources/images/my1.png" alt="Sony" style="width:10%">
                 <div class="form-group">
  <label class="col-md-4 control-label" for="fn"><font color="#641e16">Mobile Id</font></label>  
  <div class="col-md-4">
  <input name="mid" type="text" required placeholder="Mobile ID" focus>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Model</font></label>  
  <div class="col-md-4">
  <input name="mname" type="text" required placeholder="Mobile Model">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Brand</font></label>  
  <div class="col-md-4">
  <input name="mbrand" type="text" required placeholder="Mobile Brand">
    
  </div>
</div>
 
<!-- DropDown input-->
<div class="form-group">
     
    <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Category</font></label>  
  <div class="col-md-4">
  <select id="selectedRecord" name="mcategory">
             <option>Select Category</option>
              <%
             	List<CategoryModel> clist=(List<CategoryModel>) request.getAttribute("clist");
    			for(CategoryModel c : clist){
    				out.println("<option value='"+ c.getId() +"'>"+ c.getName() + "</option>");
    			}
    			
             %>
 		           <%--  <c:forEach var="List" items="${clist}">

                <option value="${list.id}">${list.sname}</option>

            </c:forEach>
 --%>
        </select>
</div>
</div>

<!-- DropDown input-->
 <div class="form-group">
        <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Supplier</font></label>  
  <div class="col-md-4">
  <select id="selectedRecord" name="msupplier">
             <option>Select Supplier</option>
               <%
             	List<SupplierModel> slist=(List<SupplierModel>) request.getAttribute("slist");
    			for(SupplierModel s : slist){
    				out.println("<option value='"+ s.getId() +"'>"+ s.getName() + "</option>");
    			}
    			
             %> 
             <%--  <c:forEach var="slist" items="${slist}">

                <option value="${slist.supplier_id}">${slist.supplier_name}</option>

            </c:forEach> --%>

        </select>
</div> 
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Price</font></label>  
  <div class="col-md-4">
  <input name="mprice" type="text" required placeholder="Mobile Price">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln"><font color="#641e16">Mobile Description</font></label>  
  <div class="col-md-4">
  <input name="mdescription" type="text" required placeholder="Mobile Description">
    
  </div>
</div>
<!-- <div class="form-group">
  <label class="col-md-4 control-label" for="ln">Show Image</label>  
  <div class="col-md-4">
  <input name="simage" type="text" >
    
  </div>
</div> -->
<div class="form-group">
  <label class="col-md-4 control-label" for="inputMobileImage"><font color="#641e16">Mobile Image</font></label>  
  <div class="col-md-4">
  <input name="inputMobileImage" type="file" required  placeholder="Mobile Image">    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" value="supAdd" class="btn btn-primary"  data-toggle="tooltip" data-placement="top" title="Add">Add</button>
     <button id="submit" name="submit" value="supCancel" class="btn btn-danger"  data-toggle="tooltip" data-placement="top" title="Cancel">Cancel</button>
  </div>
</div>
</fieldset>
 </form>
  </div>
  </div>

 
	   
			 

<jsp:include page="Footer.jsp"/>


</body>
</html>