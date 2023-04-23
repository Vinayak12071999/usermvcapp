//home.jsp
<%@page import="org.jsp.usermvcapp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <% User user=(User)session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #eee;
	padding: 5rem 9%;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.colors-container {
  margin-top: 3rem;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap:wrap;
  gap: 10rem;
  
}
.colors-container .color-box h3 {
  background-color: aqua;
  color: #fff;
  padding: 5rem 5rem;
  font-weight: 800;
  font-size: 2.5rem;
}

.colors-container .color-box {
  background-color: #fff;
  padding: 1rem;
  border-radius: 1rem;
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
}
</style>
</head>
<body>    
   <div class="colors-container">
      <c:if test="${user!=null}">
    
      <div class="color-box">
         <h3>
           <a href="load?choice=2"><button>Edit</button></a>
         </h3>
      </div>
     
      <div class="color-box">
         <h3>
           <a href="view.jsp"><button>Profile</button></a>
         </h3>
       </div>
     
       <div class="color-box">
         <h3>
           <a href="logout"><button>Logout</button></a>
         </h3>
       </div>
      
       <div class="color-box">
         <h3>
           <a href="delete?id=${user.getId()}"><button>Delete</button></a>
         </h3>
        </div>
     
      </c:if>
   
   </div>   
</body>
</html>