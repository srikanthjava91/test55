<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	background-color: #fcf7ee;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	padding: 20px;
}

.container {
	max-width: 500px;
	margin: 50px auto;
	background-color: #ffffff;
	padding: 30px;
	border: 1px solid #4CAF50;
	border-radius: 10px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
	color: #2e7d32;
	margin-bottom: 30px;
}

table {
	width: 100%;
}

td {
	padding: 12px 5px;
	vertical-align: top;
}

label {
	font-weight: bold;
	color: #333;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 8px 10px;
	border: 1px solid #ccc;
	border-radius: 6px;
	font-size: 14px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	cursor: pointer;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

a {
	display: block;
	text-align: center;
	margin-top: 20px;
	color: #4CAF50;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Add New Employee</h1>
		<form:form method="post" action="save" modelAttribute="employee">
			<table>
				<tr>
					<td><label for="empid">EID:</label></td>
					<td><form:input path="empid" id="empid" /></td>
				</tr>
				<tr>
					<td><label for="lastname">Last Name:</label></td>
					<td><form:input path="lastname" id="lastname" /></td>
				</tr>
				<tr>
					<td><label for="firstname">First Name:</label></td>
					<td><form:input path="firstname" id="firstname" /></td>
				</tr>
				<tr>
					<td><label for="age">Age:</label></td>
					<td><form:input path="age" id="age" type="number" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form>
		<a href="viewemp">View Employees</a>
	</div>
</body>
</html>