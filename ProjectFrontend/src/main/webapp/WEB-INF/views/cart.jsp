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

</head>
<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<div class="container">
<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/clearcart'></c:url>" class="btn btn-danger" pull-left  >
<span class="glyphicon glypicon-remove"></span>
Clear Cart
</a>
</c:if>
<table class="table table-striped">
<thead id="thead">
<tr><th>ProductName</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>
<c:set var="grandTotal" value="0"></c:set>
<tbody id="tbody"><!-- cartItems is List<CartItem>, cartItem is CartItem obj -->
<c:forEach items="${cartItems }" var="cartItem">
<tr>
<td>${cartItem.product.name }</td>
<td>${cartItem.quantity }</td>
<td>${cartItem.totalPrice }</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.totalPrice }"></c:set>

<td><a href="<c:url value='/cart/removecartitem/${cartItem.cartItemId }'></c:url>" class="label label-danger" pull-left >

<span class="glyphicon glyphicon-remove" ></span>Remove
</a></td>

</tr>
</c:forEach>
</tbody>
</table>
Total Price : ${grandTotal }
<c:if test="${empty(cartItems) }">
<h3>Your Cart is Empty</h3>
</c:if>
<c:if test="${ !empty(cartItems) }">
<a href="<c:url value='/cart/shippingaddressform'></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span> Place Order  </a>
</c:if>
</div>

</body>

</html>
