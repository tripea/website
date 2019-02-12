<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core"%> --%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%-- <%@ page isELIgnored="false"%> --%>
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
				<th>BookingType</th>
				<th>Date of Booking</th>
				<th>Booked by</th>
				<th>Hotel Name</th>
				<th>Room Number</th>
				<th>Flight Name</th>
				<th>Seat Number</th>
			</tr>


			<%-- <jstl:set var="rooms" value="" scope="sesion"></jstl:set> --%>
			<jstl:forEach var="bookingList" items="${bookingList}">
				<tr>
					<td><a
						href="/getBookingById?bookingID=${bookingList.bookingID}">${bookingList.bookingType}</a></td>
					<td>${bookingList.dateOfBooking}</td>
					<td>${bookingList.bookedBy.fullName}</td>
					<td>${bookingList.hotel.hotelName}${bookingList.hotel.room.roomNumber}</td>
					<td>${bookingList.flight.flightName}${bookingList.flight.seat.row}${bookingList.flight.seat.column}</td>
				</tr>
			</jstl:forEach>

		</table>

	</div>

</body>
</html>