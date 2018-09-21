<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>

</head>

<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<div class="container text-center">
		
		<div class="panel-info">
			<div class="panel panel-heading" ></div><br>
			<div class="panel panel-body">
			<c:url value="/cart/addtocart/${productObj.id}" var="url"></c:url>
			<form action="${url }" >
			
			<img src="<c:url value='/resources/Images/${productObj.id }.png'></c:url>" height="250" width="250"><br>
			<br><b style="font-size:24px">Product Name:</b>${productObj.name }<br>
			<b style="font-size:24px">Product Desc:</b>${productObj.desc }<br>
			<b style="font-size:24px">Price:</b>${productObj.price }<br>
						<b style="font-size:24px">Quantity:</b>${productObj.quantity }<br>
			<b style="font-size:24px">Category:</b>${productObj.category.categoryname}<br>
			<c:if test="${productObj.quantity==0 }">
			<button style="background-color:#242424"    class="btn btn-lg btn-primary btn-block btn-signin" disabled>Out Of Stock</button>
			</c:if>
			<c:if test="${productObj.quantity>0 }">
			<security:authorize access="hasRole('ROLE_USER')">
			<b style="font-size:24px">Enter Quantity:</b><input type="number" min="1" max="${productObj.quantity }" name="requestedQuantity">
			<br>
			<br><button style="background-color:#242424"    class="btn btn-lg btn-primary btn-block btn-signin" type="submit" ><span class="glyphicon glyphicon-shopping-cart" ></span>Add To Cart</button>
			</security:authorize>
			</c:if>
			</form>
			<a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a>
			
			</div>
		</div>
		
	</div>
	
	
</body>
</html>