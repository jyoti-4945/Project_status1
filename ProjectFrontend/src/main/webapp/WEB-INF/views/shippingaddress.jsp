<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#form').validate({
			rules:{
				"apartmentnumber":{required:true},
				"streetname":{required:true},
				"state":{required:true},
				"city":{required:true},
				"country":{required:true},
				"zipcode":{required:true,number:true}
			}
		})
	})
</script>

</head>
<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<div class="container">
<div class=" card-container">

<c:url var="url" value="/cart/createorder"></c:url>
<form:form modelAttribute="shippingaddress" action="${url }" id="form" class="form-signin">

<p align="center"><b><font size="20">Shipping Address</font></b></p>	
<form:hidden path="id"/>

<form:label path="apartmentnumber"><b>Enter Appartment Number</b></form:label>
<form:input path="apartmentnumber" id="apartmentnumber" class="form-control"/><br>


<form:label path="streetname"><b>Enter Street Name</b></form:label>
<form:input path="streetname" id="streetname" class="form-control"/><br>


<form:label path="city"><b>Enter City</b></form:label>
<form:input path="city" id="city" class="form-control"/><br>


<form:label path="state"><b>Enter State</b></form:label>
<form:input path="state" id="state" class="form-control"/><br>


<form:label path="country"><b>Enter country</b></form:label>
<form:input path="country" id="country" class="form-control"/><br>


<form:label path="zipcode"><b>Enter Zip-Code</b></form:label>
<form:input path="zipcode" id="zipcode" class="form-control"/><br>


<button type="submit" style="background-color:#242424"    class="btn btn-lg btn-primary btn-block btn-signin">Next</button>
</form:form>
</div>
</body>
</html>