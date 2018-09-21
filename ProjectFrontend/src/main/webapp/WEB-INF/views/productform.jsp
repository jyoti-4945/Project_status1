<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<br><br><br>
<div class="container">
	<c:url value="/admin/addproduct" var="url"></c:url>
<form:form modelAttribute="product" action="${url }" enctype="multipart/form-data" method="post">
<table class='table borderless'>
<tr>
<td></td>
<td><form:hidden path="id"></form:hidden></td>
</tr>
<tr>
<td>Enter product name</td>
<td><form:input path="name"></form:input>
<form:errors path="name" cssStyle="color:red"></form:errors>
</td>
</tr>
<tr><td>Enter product price</td>
<td><form:input path="price"></form:input>
<form:errors path="price" cssStyle="color:red"></form:errors></td>
</tr><tr><td>Enter product Description</td>
<td><form:input path="desc"></form:input>
<form:errors path="desc" cssStyle="color:red"></form:errors></td>
</tr>
<tr>
<td>Enter product quantity</td>
<td><form:input path="quantity"></form:input></td>
<form:errors path="quantity" cssStyle="color:red"></form:errors>
</tr>
<tr><td>Select the Category</td>
			
			<td><form:select path="category.id"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${categories }" var="c">
		    <form:option value="${c.id }">${c.categoryname }</form:option>
		    </c:forEach>
			</form:select></td></tr>
<tr><td>Select image</td>
<td><form:input  type="file" path="img"></form:input></td>
</tr>
<tr>

			<td></td>
			<td><input type="submit" style="padding: 16px;background-color: black;
    color: white;
    border: 2px solid #4CAF50; /* Green */
"value="ADD"></td>
			</tr>
			

</table>

</form:form>
</div>

</body>
</html>