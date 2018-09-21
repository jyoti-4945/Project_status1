<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<style>
img {
    display: block;
    margin-left: auto;
    margin-right: auto;
}
</style>

</head>
<body>
	<div class="container">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#abc" data-slide-to="0" class="active"></li>
    <li data-target="#abc1" data-slide-to="1"></li>
    <li data-target="#abc2" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
   
    <div class="carousel-item active">
      <img class="d-block w-100" src="resources/Images/sony1.jpg" alt="Second slide" class="img-responsive">
    </div>
    
    <div class="carousel-item">
      <img class="d-block" src="resources/Images/3.jpg"  width="80%"  alt="Fourth slide" class="img-responsive">
    </div>
    <div class="carousel-item">
      <img class="d-block" src="resources/Images/20PFL3738_V7-RTP-global-001.jpg"  width="80%" alt="Fifth slide" class="img-responsive">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>





</body>
</html>