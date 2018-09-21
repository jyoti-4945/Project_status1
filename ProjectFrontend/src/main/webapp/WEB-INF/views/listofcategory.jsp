<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>


</head>
<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<br>
<br>
<div class="container">
	<b>List of Category</b>
		<table class="table" style="font-size:25px">
			<thead>
				<tr>
					<th>ID</th>
					<th>category</th>
					<th>ACTION</th>
				</tr>
			</thead>
			<tbody>
				
				
				<c:forEach var="c" items="${categoryList }">
					<tr >
						<td>${c.id }</td>
							 
						<td>${c.categoryname }</td>
				
				
				
				
						<td>
					<a href="<c:url value='/all/getcategory/${c.id }'></c:url>"><img src="resources/Images/info.png" height=20px width=20px></a>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					
					<a href="<c:url value='/admin/deletecategory/${c.id }'></c:url>"><img src="resources/Images/trash.jpg" height=20px width=20px></a>
					<a href="<c:url value='/admin/updatecategory/${c.id }'></c:url>"><img src="resources/Images/pencil.jpg" height=20px width=20px></a>
					</security:authorize>
					</td>				</c:forEach>
			</tbody>
		</table>
</div>
	
</body>
