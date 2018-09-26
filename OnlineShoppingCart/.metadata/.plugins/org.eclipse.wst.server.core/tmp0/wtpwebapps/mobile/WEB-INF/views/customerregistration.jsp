<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  <%@page import="com.niit.mback.dao.MobileDao"%>

<%@page import="com.niit.mback.model.MobileModel" %>

<%-- 
<%@page import="mobile.webapp.WEB-INF.views.viewcart" %> --%>

<%@page import="com.niit.mobile.controller.MobileList" %>
  
  
<%@page import="com.niit.mobile.controller.CartController" %>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   
    <link href="./resources/css/style.css" rel="stylesheet" type="text/css"  />
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
    
    <link rel="stylesheet" href="./resources/css/mobile-details.css">
 <link rel="stylesheet" href="./resources/js/mobile-details.js">
 <link rel="stylesheet" href="./resources/css/reg.css">
    

<!--  <script type="text/javascript">
$(document).ready(function() {
    $('#contact_form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            first_name: {
                validators: {
                        stringLength: {
                        min: 2,
                    },
                        notEmpty: {
                        message: 'Please enter your First Name'
                    }
                }
            },
             last_name: {
                validators: {
                     stringLength: {
                        min: 2,
                    },
                    notEmpty: {
                        message: 'Please enter your Last Name'
                    }
                }
            },
			
			
			
            email: {
                validators: {
                    notEmpty: {
                        message: 'Please enter your Email Address'
                    },
                    emailAddress: {
                        message: 'Please enter a valid Email Address'
                    }
                }
            },
            contact_no: {
                validators: {
                  stringLength: {
                        min: 12, 
                        max: 12,
                    notEmpty: {
                        message: 'Please enter your Contact No.'
                     }
                }
            },
			 
                }
            }
        })
        .on('success.form.bv', function(e) {
            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                $('#contact_form').data('bootstrapValidator').resetForm();

            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            // Use Ajax to submit form data
            $.post($form.attr('action'), $form.serialize(), function(result) {
                console.log(result);
            }, 'json');
        });
});
</script>

<script>
function check()
{
	alert("data stroed");
	
	}
</script>
 --> 
</head>
    
    
<body>

<jsp:include page="Header.jsp"/>

<div class="container">

    <form class="well form-horizontal" action="invoice" method="post"  id="contact_form">
  
  <center> <img src="${pageContext.request.contextPath}/resources/images/user.png" alt="OPPO" style="width:3%;"></center>
<fieldset style="float: center;background-color:#ff8080;">
<!-- Form Name -->

 <legend><center><h2><b><font color="blue "> Customer Shipping Details</font></b></h2></center></legend><br>
<img src="${pageContext.request.contextPath}/resources/images/shi1.jpg" alt="OPPO" style="width:15%;">

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name" placeholder="Name" class="form-control"  type="text" required>
    </div>
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">Shipping Address</label> 
  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <textarea rows="5" cols="44" name="add" required></textarea>
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <!-- <input name="email" placeholder="E-Mail Address" class="form-control"  type="text" required> -->
  <!-- <input id="email" name="email"  class="form-control" required  placeholder="Enter you Email"> -->
   <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control">
    </div>
  </div>
</div>


<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Contact No.</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <!-- <input id="tel" name="contact_no" placeholder="(+91)" class="form-control" pattern="^\d{4}-\d{3}-\d{3}$" required> -->
   <input name="contact_no"  type="tel" pattern="^\d{3}-\d{3}-\d{4}$" class="form-control" required >
  <input type="hidden" name="tot" value="${tot}" />
    </div>
  </div>
</div>

<%--  --%> 
<!-- Button -->
<div class="form-group">
 
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning"">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>

</fieldset>

</form>
<%-- <input type="hidden" name="tot" value="${tot}"/> 

  <h3>Amount = ${tot}</h3>   --%>
  <h1 style="color: red;"> Total Amount =<i class="fa fa-inr"></i> <c:out value="${tot}"/></h1> 
 <jsp:include page="Footer.jsp"/>
</body>
</html>