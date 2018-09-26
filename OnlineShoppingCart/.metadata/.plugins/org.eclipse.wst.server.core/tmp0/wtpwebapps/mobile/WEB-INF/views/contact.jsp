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

<link rel="stylesheet" href="./resources/css/reg.css">

<title>Contact Us</title>
</head>
<body>
<jsp:include page="Header.jsp" />

<img src="${pageContext.request.contextPath}/resources/images/cont.jpg" alt="Sony" style="width:100%">

<div class="col-sm-6">
      <div class="thumbnail">
   <b>                          
   <p>
We'd love to hear from you!
</p>

<p>
For support related queries write to:
support@jmo.com
</p>

<p>
For security related queries write to:
payments-fraud@jmo.com
</p>
<p>
or Call us on:
0124-6789-345
Working hours: 10am to 7pm
</p>
<p>
For business related queries write to:
business@jmo.com
</p>       
     
<p>JMO-DIGITAL Inc.Co</p>
<p>97 - 98, Alagar Kovil Main Road,</p> 
<p>Goripalayam, Madurai,</p> 
<p>Tamil Nadu 625002</p>
 <p>India </p>
 
 </b>       
      </div>
    </div>

<div class="col-sm-6">
      <div class="thumbnail">
      
      <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key= AIzaSyCAGYynrCZsh3VmVTI2JyT5lUCHtXOyOTI '></script>
      <div style='overflow:hidden;height:400px;width:500px;'>
      <div id='gmap_canvas' style='height:400px;width:500px;'>
      </div>
      <style>#gmap_canvas img{max-width:none!important;background:none!important}
      </style>
      </div> 
      <a href='http://maps-generator.com/'>google map on my website</a> 
      <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=63c5c678da94e975c1fdb0a99325164d0e109000'>
      </script>
      <script type='text/javascript'>
      function init_map()
      {var myOptions = {zoom:12,center:new google.maps.LatLng(9.9318143,78.12864869999999),mapTypeId: google.maps.MapTypeId.ROADMAP};
      map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
      marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(9.9318143,78.12864869999999)});
      infowindow = new google.maps.InfoWindow({content:'<strong>JMO DIGI</strong><br>Goripalayam<br>625002 Madurai<br>'});
      google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});
      infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);
      </script>

  
</div>
</div>


<br/>
<br/>
<br/>

<jsp:include page="Footer.jsp" />

</body>
</html>