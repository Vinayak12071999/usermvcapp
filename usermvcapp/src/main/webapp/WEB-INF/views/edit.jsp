//edit.jsp
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
<%session.getAttribute("user"); %>


<c:if test="${user!=null }">
<form:form modelAttribute="u" action="edit">

<form:label path="id">ID</form:label>
<form:input path="id"  value="${user.getId()}" readonly="true"/>
<br>
<form:label path="name">Name</form:label>
<form:input path="name"  value="${user.getName() }" />
<br>
<form:label path="age">Age</form:label>
<form:input path="age"  value="${user.getAge() }" />
<br>
<form:label path="phone">Phone</form:label>
<form:input path="phone"  value="${user.getPhone() }" />
<br>
<form:label path="password">Password</form:label>
<form:input path="password"  value="${user.getPassword() }" />
<br>
<form:button>UPDATE</form:button>
</form:form>

</c:if>
</body>
</html>