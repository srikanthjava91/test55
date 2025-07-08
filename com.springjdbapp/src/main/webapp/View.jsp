<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employees List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	background-color: #fcf7ee;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 20px;
}

.container {
	max-width: 900px;
	margin: 40px auto;
	background-color: #ffffff;
	padding: 25px 30px;
	border: 1px solid #4CAF50;
	border-radius: 10px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #2e7d32;
	margin-bottom: 25px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #4CAF50;
	color: white;
}

tr:hover {
	background-color: #f1f1f1;
}

a {
	color: #4CAF50;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}

.add-link {
	display: block;
	text-align: right;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Employees List</h1>
		<table>
			<tr>
				<th>Emp ID</th>
				<th>Last Name</th>
				<th>First Name</th>
				<th>Age</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.empid}</td>
					<td>${emp.lastname}</td>
					<td>${emp.firstname}</td>
					<td>${emp.age}</td>
					<td><a href="editemp/${emp.empid}">Edit</a></td>
					<td><a href="deleteemp/${emp.empid}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<a class="add-link" href="empform">➕ Add New Employee</a>
	</div>
</body>
</html>