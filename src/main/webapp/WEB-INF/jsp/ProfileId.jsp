<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Enter Profile Id</h1>
	Profile Id:${bookingList.bookedBy.profileId} 
	<%-- ${bookingInformation.bookedBy.profileId} --%>
	<label><input type="number"></label>

	<label><a
		href="getBookingDetailsByProfileId/?profileId=${bookingList.bookedBy.profileId}">Booking
			Information</a>
	</label>

</body>
</html>