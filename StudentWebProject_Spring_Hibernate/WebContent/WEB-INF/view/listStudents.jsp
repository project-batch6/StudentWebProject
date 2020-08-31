<%@page import="com.dxc.model.Student"%>
<%@page import="java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html>

<head>
	<title>List Students</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Stduent Data</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			<input type="button" value="Add Student"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
			
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Student ID</th>
					<th>Name</th>
					<th>DOB</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>UpdateStudent</th>
					<th>RemoveStudent</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="temp" items="${Students}">
				
				
					<fmt:formatDate var="date" value="${temp.dob}" pattern="dd-MM-yyyy" />
					<c:url var="updateLink" value="/student/showFormForUpdate">
						<c:param name="id" value="${temp.id}"></c:param>
					</c:url>
					
					<c:url var = "DeleteLink" value="/student/Delete">
							<c:param name="id" value="${temp.id}"></c:param>
					</c:url>
					<tr>
						<td> ${temp.id} </td>
						<td> ${temp.name} </td>
						<td> ${date} </td>
						<td> ${temp.mobile} </td>
						<td> ${temp.email} </td>
						<td><a href="${updateLink}">updateDetails</a></td>
						<td><a href="${DeleteLink}" onclick="if(!(confirm('are you sure to delete this Student data?'))) return false">Delete</a> </td>
					</tr>
				
				</c:forEach>
			</table>
			<br>
			<input type="button" value="Logout"
				   onclick="window.location.href='logout'; return false;"
				   class="add-button"
			/>	
		</div>
	
	</div>
	

</body>

</html>
