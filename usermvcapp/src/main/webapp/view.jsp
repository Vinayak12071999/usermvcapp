//view.jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${user!=null }">
<h1>ID:${user.getId()}</h1>
<h1>NAME:${user.getName()}</h1>
<h1>PHONE:${user.getPhone()}</h1>
<h1>AGE:${user.getAge()}</h1>
<h1>PASSWORD:${user.getPassword()}</h1>
</c:if>
</body>
</html>