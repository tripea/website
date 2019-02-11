<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/showCustomers" method="post">
		<h1>Customer's info:</h1>
		Please enter names as mentioned on your government ID proof
		<table>
			<tr>
				<td><input type="text" name="firstName"
					placeholder="Enter First Name"></td>

				<td><input type="text" name="lastName"
					placeholder="Enter First Name"></td>
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