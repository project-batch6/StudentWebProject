<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>

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
		<h3>Add new Student</h3>

<table>
		<form:form action="addStudent" method="post" modelAttribute="newStudent">
			<tr>
			<td><label>Student ID:</label></td>
			<td><form:input path="id"/></td>
			</tr>
			<tr>
			<td><label>Name:</label></td>
			<td><form:input path="name"/></td>
			</tr>
			<tr>
			<td><label>DOB:</label></td>
			<td><form:input path="dob"/></td>
			</tr>
			
			<tr>
			<td><label>Mobile:</label></td>
			<td><form:input path="mobile"/></td>
			</tr>
			<tr>
			<td><label>Email:</label></td>
			<td><form:input path="email"/></td>
			</tr>
			
			<tr>
			<td><label></label></td>
			<td><input type = "submit" value= "save" class="save"></td>
			</tr>
			
			
		</form:form>
		
		
</table>

<br>
			<input type="button" value="Logout"
				   onclick="window.location.href='logout'; return false;"
				   class="add-button"
			/>
</div>
</body>
</html>