<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            background-color: #fcf7ee;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container {
            margin: 50px auto;
            width: 90%;
            max-width: 500px;
            background-color: #fff;
            border: 1px solid #4CAF50;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #2d572c;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px 5px;
        }
        label {
            font-weight: bold;
            color: #333;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Edit Employee</h1>
    <form:form method="POST" action="/com.springjdbapp/editsave" modelAttribute="employee">
        <table>
            <tr style="display: none;">
                <td><form:hidden path="empid" /></td>
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
                <td colspan="2">
                    <input type="submit" value="Save Changes" />
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>