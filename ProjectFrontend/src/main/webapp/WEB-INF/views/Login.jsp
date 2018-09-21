<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>

</head>
<body id="LoginForm" background="<c:url value="/resources/Images/bg10.jpg" ></c:url>" style="height:100">
<span style="color:red">${error }</span><br>
${msg }<br>

<br><br>
<div class="container">
        <div class=" card-container">


                <c:url value="/j_spring_security_check" var="url"></c:url>

<form method="post" action="${url }" class="form-signin">
<b style="font-size:25px">Enter Email :</b><input type="text" name="j_username" class="form-control"><br>
<br>
<b style="font-size:25px">Enter password : </b><input type="password" name="j_password" class="form-control">
<br>
<input type="submit" value="Login" style="background-color:#242424"    class="btn btn-lg btn-primary btn-block btn-signin">

</form>
</div>
</div>
<!-- /container -->
</body>
</html>