<!DOCTYPE html>
<html lang="en">
<head>
<title>Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style>
.navbar-header {
	float: none;
}

ul{margin:0;}
a {padding: 10px 10px; display:inline-block;}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li ><a href="#"><img
						src="https://raw.githubusercontent.com/kanaksoni714/MyProject/master/logoo.jpg"
						alt="TripEasy" style="width: 100px;"></a></li>

				<li><a href="/search/searchFlights">Flight Booking</a></li>
				<li><a href="/search/searchHotels">Hotel Booking</a></li>
				<li><a href="/bookings/getAllBookings">Booking History</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/signUpPage"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="logout"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>


</body>
</html>
