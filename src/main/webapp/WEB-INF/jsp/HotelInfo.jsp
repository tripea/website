<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
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
				<th>Hotel Name</th>
				<th>Address</th>
				<th>Review</th>
				<th>Rooms</th>
				<th>Photos</th>
				<th>Facilities</th>
				<th>Description</th>
				<th>Availability</th>
			</tr>
 		 
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
					<td>${hotel.facilities}</td>
					<td>${hotel.description}</td>
					
					<jstl:if test="${hotel.totalAvailableRooms==0}">
					<td>No Rooms Available</td>
					</jstl:if>
					<jstl:if test="${hotel.totalAvailableRooms != 0}">
					<td>Available Rooms :${hotel.totalAvailableRooms}<br>
					<a href ="bookingForm">Book Room </a></td>
					
					</jstl:if>
					
	
				</tr>
			 

		</table>

	</div>

</body>
</html> --%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page isELIgnored="false"%>
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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>


<style>
.carousel-inner img {
	width: 100%; /* Set width to 100% */
	min-height: 200px;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}
</style>
<body style="background-color: #5E4485">
	<div class="container-fluid">
		<%-- <div class="row">
			<div class="col-sm-5">
				<div class="container">
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						style="position: absolute;">
						<ol class="carousel-indicators">

							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>


						<div class="carousel-inner">
							<div class="item active">
								<jstl:set var="first" value="${hotel.photos[0]}" />
								<img class="img-responsive" src=${first } alt="Hotel image"
									width="700" height="500">
							</div>

							<jstl:forEach var="photos" items="${hotel.photos}">
								<div class="item">
									<img class="img-responsive" src=${photos } alt="Los Angeles"
										width="700" height="500">
								</div>
							</jstl:forEach>

						</div>


						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>

			</div> --%>





		<div class="row">
			<div class="col-sm-5">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<jstl:set var="first" value="${hotel.photos[0]}" />
							<img src="${first}" alt="Image">
							<div class="carousel-caption">
								<h3>See More Photos</h3>

							</div>
						</div>

						<jstl:forEach var="photos" items="${hotel.photos}">
							<div class="item">
								<img src="${photos}" alt="Image">

							</div>
						</jstl:forEach>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>

			<div class="col-sm-3 col-xs-12">
				<div class="col-sm-3 col-xs-12"></div>
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<h1>Google map</h1>
					</div>
				</div>
				<a href="#"><img src="${first}" class="img-responsive"
					style="width: 100%" alt="Image"></a>
				<div class="carousel-caption">
					<h3>See More Room Photos</h3>

				</div>
			</div>
			<div class="row slideanim">
				<div class="col-sm-3 col-xs-12">
					<div class="panel panel-default text-center">
						<div class="panel-heading">
							<p>Hurry! Last few rooms remaining for your dates</p>
						</div>
						<div class="panel-body">
							<p>
								<strong> Non Refundable </strong><br> <strong>
									Breakfast</strong>
							</p>



						</div>
						<div class="panel-footer">
							<button class="btn btn-lg">Book Now</button>
						</div>
					</div>
				</div>

				<div class="col-sm-3 col-xs-12">
					<div class="panel panel-default text-center">
						<div class="panel-body">
							<p>
								<strong>Reviews ${fn:length(hotel.review)}</strong><br>
								<jstl:forEach var="hash" items="${hotel.review">
											<option><jstl:out value="${hash}" /></option>
										</jstl:forEach>
							</p>
							<div class="col-sm-9 "></div>
							<div class="col-sm-3 ">
								<p>
									<a href=""><strong>More Reviews </strong><br></a>

								</p>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
</body>
</html>





