<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>


</head>
<body background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<br><br><br>
<div class="container">
<c:url value="/admin/updateproduct" var="url"></c:url>
<form:form modelAttribute="product" action="${url }" method="POST">
		<table class="table">
			<tr>
				<td></td>
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter Product Name
		</td>
				<td><form:input path="name"></form:input>
				<form:errors path="name" cssStyle="color:red"></form:errors></td>

			</tr>
			<tr>
			<td>Enter Product Description</td>
			<td><form:textarea path="desc"></form:textarea>
			<form:errors path="desc" cssStyle="color:red"></form:errors></td></tr>
			<tr>
			<td>Enter Price</td>
			<td><form:input path="price"></form:input>
			<form:errors path="price" cssStyle="color:red"></form:errors></td></tr>
			<tr>
			<td>Enter quantity</td>
			<td><form:input path="quantity"></form:input>
			<form:errors path="quantity" cssStyle="color:red"></form:errors></td></tr>
			<tr><td>Select the Category</td>
			
			<td><form:select path="category.id"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${categories }" var="c">
		    <form:option value="${c.id }">${c.categoryname }</form:option>
		    </c:forEach>
			</form:select></td></tr>
			<tr>
			<td></td>
			<td><input type="submit" style="padding: 16px;background-color: black;
    color: white;
    border: 2px solid #4CAF50; /* Green */
" value="updateprouct"></td>
			</tr>


		</table>
		</form:form>
</div>

</body>
</html>