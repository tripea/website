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
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<body>
	<form class="form-inline" action="customerInformation">
		<label for="fName">First name:</label> <input type="text"
			class="form-control" id="fName"> <label for="lName">Last
			name:</label> <input type="text" class="form-control" id="lName"> <label
			for="age">Age: </label> <input type="number" class="form-control"
			id="age"> <label for="Gender">Gender:</label><select
			name="Gender"><option value="Male">Male</option>
			<option value="Female">Female</option>
			<option value="Other">Other</option></select>
		<button type="submit" href="bookingInformation"class="btn btn-primary">Submit</button>
	</form>
	</body>
</html>