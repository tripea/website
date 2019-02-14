<!DOCTYPE html>
<html lang="en">
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
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   -->
<style>
.navbar-header {
	float: none;
}

ul{margin:0;}
a {padding: 10px 10px; display:inline-block;}
</style>
</head>
<body>

	<!-- 
<div class="row">
<div class="col-lg-12">
	<div class="navbar-header">
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			

			<a class="navbar-brand" href="#"> <img
				src="https://raw.githubusercontent.com/kanaksoni714/MyProject/master/logoo.jpg"
				alt="TripEasy" style="width: 100px;">
			</a>

			Links
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="search/searchFlights">Flight Booking</a></li>
				<li class="nav-item"><a class="nav-link"
					href="search/searchHotels">Hotel Booking</a></li>
					<li class="nav-item"><a class="nav-link"
					href="bookings/getAllBookings">Get All Bookings</a></li>
			</ul>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/s"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li class="nav-item"><a href="logout"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
		</nav>
	</div>
	</div>
	</div>
 
  -->



	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li ><a href="#"><img
						src="https://raw.githubusercontent.com/kanaksoni714/MyProject/master/logoo.jpg"
						alt="TripEasy" style="width: 100px;"></a></li>

				<li><a href="search/searchFlights">Flight Booking</a></li>
				<li><a href="search/searchHotels">Hotel Booking</a></li>
				<li><a href="bookings/getAllBookings">Booking History</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/s"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="logout"><span
						class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			</ul>
		</div>
	</nav>


</body>
</html>
