<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.flight {
	background-color: #ddd;
	margin: 10px;
}
</style>

</head>
<body>

	<form action="customerInformation">

		<h1>Fill Customer's info:</h1>


		<table>
			<tr>
				<td><input type="text" name="firstName"
					placeholder="Enter First Name"></td>

				<td><input type="text" name="lastName"
					placeholder="Enter Last Name"></td>
			</tr>
			<tr>

				<td><select name="Gender"><option value="Male">Male</option>
						<option value="Female">Female</option>
						<option value="Other">Other</option></select></td>
				<td><input type="number" name="age" placeholder="Enter age">
				</td>
			</tr>
			<tr>
				<td>Book:<input type="submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>