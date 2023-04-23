//login.jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${message!=null }">
<h2>${message}</h2> 
</c:if>
<form action="loginUser" method="post">
PHONE<input type="text" name="phone" placeholder="Enter your phone number"><br> 
PASSWORD<input type="text" name="password" placeholder="enter your password"><br> 
<input type="submit" value="Login">
</form>
<h2>New User?</h2>
<h2><a href="load?choice=1">Click here to Register</a></h2>

</body>
</html>