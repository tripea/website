<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<th>booking Type</th>
				<th>Date of Booking</th>
				<th>Total Cost of booking</th>
				<th>Booked by</th>
				<th>Hotel name and Room number</th>
				<th>Number of Guests</th>
				<th>CheckInDate and CheckOutDate</th>
				<th>Flight Name and Seat Number</th>
				<th>Number of passengers</th>
			</tr>
			private Integer bookingID;
	<!-- private String bookingType;
	private Object bookingDetails;
	private LocalDateTime dateOfBooking;
	private Double totalCost;
	private List<Customer> customers;
	private Profile bookedBy;
	private Hotel hotel;
	private Flight flight;
	private LocalDateTime checkInDate;
	private LocalDateTime checkOutDate; -->
			<%-- <jstl:set var="rooms" value="" scope="sesion"></jstl:set> --%>
		 
				<tr>
					<td>${hotel.hotelName}</td>
					<td> landMark : ${hotel.address.landMark} <br>
						city : ${hotel.address.city}<br>
						pincode : ${hotel.address.pincode}<br>
						state: ${hotel.address.state}<br>
						nation : ${hotel.address.nation}<br>
					
					</td> 
					<td>${hotel.review}</td>
					<td>${hotel.photos}</td>
					<td>${hotel.rooms}</td>
</body>
</html>