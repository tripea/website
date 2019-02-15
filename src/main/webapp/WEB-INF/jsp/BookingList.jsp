<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table">
		<thead class="table table-bordered table-dark">
			<tr>
				<th scope="col">Booking Id</th>
				<th scope="col">Booking Type</th>
				<th scope="col">Date of Booking</th>
				<th scope="col">Booked by</th>
				<th scope="col">Hotel Name and Room Number</th>
				<th scope="col">Number of Guests</th>
				<th scope="col">CheckIn Date</th>
				<th scope="col">CheckOut Date</th>
				<th scope="col">Flight Name and Seat Number</th>
				<th scope="col">Number of Passengers</th>
			</tr>
		</thead>
		<tbody>
			<jstl:forEach var="bookingList" items="${bookingList}">
				<tr>
					<!-- <th scope="row"></th> -->
					<td>${bookingList.bookingID}</td>
					<td>${bookingList.bookingType}</td>
					<td>${bookingList.dateOfBooking}</td>
					<td>${bookingList.bookedBy.fullName}</td>
					<td>${bookingList.hotel.hotelName} ${bookingList.room.roomNumber}</td>
					<td><!-- <a href=guestsDetails> -->${bookingList.numberOfGuest}</td>
					<td>${bookingList.checkInDate}</td>
					<td>${bookingList.checkOutDate}</td>
					<td>${bookingList.flight.flightName}${bookingList.flight.seat.row}${bookingList.flight.seat.column}</td>
					<td><a href="passengerDetails">${bookingList.numberOfPassengers}</a>
				</tr>
			</jstl:forEach>
		</tbody>
	</table>
</body>
</html>