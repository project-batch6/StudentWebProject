<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-student-style.css">

</head>
<body>

<div id="wrapper">
		<div id="header">
			<h2>Student Data </h2>
		</div>
	</div>

	<div id="container">
		<h3>Student Login</h3>

	<table>
		<form:form action="loginValidate" method="post" modelAttribute="newUser">
			<tr><td>Username: <form:input path="username"/></td></tr>
			<tr><td>Password: <form:password path="password"/></td></tr>
			
			
			<tr><td><br><input type = "submit" value= "Login"></td></tr>
			
			
		</form:form>
</table>
</div>
</body>
</html>