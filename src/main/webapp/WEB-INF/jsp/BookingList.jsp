<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
table, th, td {
	padding: 5px;
	height: 80px;
	width: 1100px;
	font-size: 20px;
	text-align: center;
	font-family: inherit;
}

th, td {
	padding: 1px;
	background-color: lightblue
}
</style>

<body>

	<div>
		<table>
			<tr>
				<th>Booking Id</th>
				<th>Booking Type</th>
				<th>Date of Booking</th>
				<th>Booked by</th>
				<th>Hotel Name and Room Number</th>
				<th>CheckIn Date</th>
				<th>CheckOut Date</th>
				<th>Flight Name and Seat Number</th>
				<th>Number of Customers</th>
			</tr>

			<jstl:forEach var="bookingList" items="${bookingList}">
				<tr>
					<td><a href="customerInformation">${bookingList.bookingID}</a></td>
					<td>${bookingList.bookingType}</td>
					<td>${bookingList.dateOfBooking}</td>
					<td>${bookingList.bookedBy.fullName}</td>
					<td>${bookingList.hotel.hotelName}${bookingList.hotel.room.roomNumber}</td>
					<td>${bookingList.checkInDate}</td>
					<td>${bookingList.checkOutDate}</td>
					<td>${bookingList.flight.flightName}${bookingList.flight.seat.row}${bookingList.flight.seat.column}</td>
					<td>${bookingList.numberOfCustomers}</td>
				</tr>
			</jstl:forEach>

		</table>

	</div>

</body>
</html>