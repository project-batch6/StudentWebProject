<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Student</title>

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
			<h2>Student Data</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Student</h3>
	
		<form:form action="addStudent" modelAttribute="student" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
					
			<table>
				<tbody>
				<fmt:formatDate var="date" value="${student.dob}" pattern="dd-MM-yyyy" />
					<tr>
						<td><label>Student ID:</label></td>
						<td><form:input path="id" /></td>
					</tr>
					<tr>
						<td><label>Name:</label></td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td><label>DOB:</label></td>
						<td><form:input path="dob"/>
					</tr>
				
					<tr>
						<td><label>Mobile number:</label></td>
						<td><form:input path="mobile" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/student/list">Back to List</a>
		</p>
	
	<br>
			<input type="button" value="Logout"
				   onclick="window.location.href='logout'; return false;"
				   class="add-button"
			/>
	</div>

</body>

</html>










