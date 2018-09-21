<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
 
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<nav class="navbar navbar-dark bg-dark" >
  <a class="navbar-brand" href="#">
    
    <p style="font-size:27px">
    <img src="resources/Images/hk.jpg" width="30" height="30" class="d-inline-block align-top" alt="">
    
    HK ELECTRONICS</p>
  </a>
  
</nav>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">                                     </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value='/home'></c:url>" style="font-size:22px;">Home <span class="sr-only">(current)</span></a>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/all/getallproducts"></c:url>" style="font-size:22px;">Browse All Products</a>
      		</li>
      		<li class="nav-item">
        <a class="nav-link" href="<c:url value="/all/getAllcategorys"></c:url>" style="font-size:22px;">Browse All Categories</a>
      		</li>
      
      			
      
      
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="nav-item">
        <a class="nav-link"   href="<c:url value='/admin/getproductform'></c:url>" style="font-size:22px;">Add product</a>
        
      </li>
      </security:authorize>
      <security:authorize access="hasRole('ROLE_ADMIN')">
      <li class="nav-item">
        <a class="nav-link"   href="<c:url value='/admin/getcategoryform'></c:url>" style="font-size:22px;">Add Category</a>
        
      </li>
      </security:authorize>
      	      
      
     <c:if test="${pageContext.request.userPrincipal.name==null }">
				<li class="nav-item"><a class="nav-link" href="<c:url value='/all/registrationform'></c:url>" style="font-size:22px;">Sign Up</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value='/login'></c:url>" style="font-size:22px;">Sign In</a></li>
				</c:if>
				
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<li class="nav-item"><a href="#" class="nav-link" style="font-size:22px;">Welcome ${pageContext.request.userPrincipal.name }</a></li>
				<li class="nav-item"><a style="font-size:22px;" class="nav-link" href="<c:url value='/j_spring_security_logout'></c:url>">Sign out</a></li>
			    </c:if>
			 </ul>
    <form class="form-inline my-2 my-lg-0">
      <security:authorize access="hasRole('ROLE_USER')">
			
      <a href="<c:url value="/cart/getcart"></c:url>" class="form-control mr-sm-2"><img height="30" width="30" src="<c:url value="/resources/Images/cart.png"></c:url>"></a> 
      </security:authorize>
    </form>
  </div>
</nav>


</body>
</html>