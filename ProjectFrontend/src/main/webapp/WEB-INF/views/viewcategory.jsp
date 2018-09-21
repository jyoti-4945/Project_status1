<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<div class="container text-center">
<div class="panel-info">
			<div class="panel panel-heading"></div><br><br>
			<div class="panel panel-body">
		<div class="panel-info">
			<div class="panel panel-body">
			<br><br>
			<B style="font-size:28px">Category Details</B><br><br>
			<b style="font-size:22px">category Name:</b>${categoryObj.categoryname }<br>
			<br>
			
	<a href="<c:url value='/all/getAllcategorys' ></c:url>">Show All categoryS</a>		
			</div>
			</div>
		</div>
	</div>
	</div>
	
</body>
</html>