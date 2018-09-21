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
	<c:url value="/admin/addcategory" var="url"></c:url>
<form:form modelAttribute="category" action="${url }" enctype="multipart/form-data" method="post">
<table class='table borderless'>
<tr>
<td></td>
<td><form:hidden path="id"></form:hidden></td>
</tr>
<tr>
<td>Enter category name</td>
<td><form:input path="categoryname"></form:input>
<form:errors path="categoryname" cssStyle="color:red"></form:errors>
</td>
</tr><tr>

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