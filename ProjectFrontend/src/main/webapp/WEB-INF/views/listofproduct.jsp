<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

</head>
<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<br><br>
	<div class="container">
	
		<table class="table" style="font-size:25px">
			<thead>
				<tr>
				<th>Image</th>
				<th>Product Id</th>
					<th>Product Name</th>
					<th>Product description</th>
					<th>Price</th>
					<th>Category</th>
					
					
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="p" items="${productsList }" >
				<tr>
				<td><img src="<c:url value='/resources/Images/${p.id }.png'></c:url>" height="30px" width="30px"></td>
					<td>${p.id }</td>
					<td>${p.name }</td>
					<td>${p.desc }</td>
					<td>${p.price }</td>
					<td>${p.category.categoryname }</td>
						
					
					<td>
					<a href="<c:url value='/all/getproduct/${p.id }'></c:url>"><img src="resources/Images/info.png" height=20px width=20px></a>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					
					<a href="<c:url value='/admin/deleteproduct/${p.id }'></c:url>"><img src="resources/Images/trash.jpg" height=20px width=20px></a>
					<a href="<c:url value='/admin/updateproduct/${p.id }'></c:url>"><img src="resources/Images/pencil.jpg" height=20px width=20px></a>
					</security:authorize>
					</td>

				</tr>
			</c:forEach>
			</tbody>
		</table>

	</div>
	</body>
</html>