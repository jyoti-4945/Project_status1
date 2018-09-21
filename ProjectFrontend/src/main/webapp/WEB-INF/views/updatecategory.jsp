<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<div class="container">
<br><br>
<c:url value="/admin/updatecategory" var="url"></c:url>
<form:form modelAttribute="category" action="${url }">
		<table>
			<tr>
				<td></td>
				<!-- user need not
				 give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter category Name
				</td>
				<td><form:input path="categoryname"></form:input></td>
			</tr>
			<td></td>
			<tr>
			</tr>
			</tr>
			<td></td>
			<tr>
			</tr>
			</tr>
			<td></td>
			<tr>
			</tr></tr>
			<td></td>
			<tr>
			</tr></tr>
			<td></td>
			<tr>
			</tr>
						<tr>
			
			
			<td><input type="submit" value="Edit category" style="background-color:#242424"    class="btn btn-lg btn-primary btn-block btn-signin"></td>
			</tr>


		</table>

	</form:form>
</div>
</body>
</html>