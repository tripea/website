<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="saveHotel" method="post">
	<h1>Hotel Booking</h1>
		<table>
			<tr>
				<td><select id="title" name="title" class="txtSelect"><option
							value="Mr">Mr</option>
						<option value="Mrs">Mrs</option>
						<option value="Ms">Ms</option></select></td>
				<td><input id="fName" name="fullName" type="text" class="txtInput"
					placeholder="Enter Full Name" value=""></td>
			</tr>
			<tr>
			<td>
				<input name="email" id="emailId" autocomplete="off" type="text"
					class="txtInput" placeholder="Enter Email ID" value="">
					</td>
			</tr>
				<tr>
			<td>
				Enter Number Of Guests : <input name="numberOfGuest" type="number">
					</td>
			</tr>
			<tr>
				<td>Book:<input type="submit">
				</td>
			</tr>
		</table>
	</form>

</body>
</body>
</html>