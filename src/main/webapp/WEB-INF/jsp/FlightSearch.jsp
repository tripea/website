<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Project</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<style>
.signupbtn {
	padding: 4px 8px;
	background-color: #f44336;
}
</style>
</head>
<body>
	<div class="container"
		style="padding: 20px; background-color: cyan; margin-top: 150px;">
		<!-- -->
		<form class="form-inline" action="searchFlight" method="post">

			<div class="form-group">
				<b> Source: <input list="cities" class="form-control"
					list="cities" name="source" required="required"> <datalist
						id="cities">
						<jstl:forEach var="list" items="${flightList}">
							<option value="${list.city} (${list.code}) ">
						</jstl:forEach>
					</datalist>
			</div>

			<div class="form-group">
				<b> Destination: <input list="cities" class="form-control"
					list="cities" name="destination" required="required"> <datalist
						id="cities">
						<jstl:forEach var="list" items="${flightList}">
							<option value="${list.city} (${list.code}) ">
						</jstl:forEach>
					</datalist>
			</div>

			
			<div class="form-group">

				<b>Date : <input type="date" name="traveldate">
			</div>

			<!-- <div class="form-group" id="sandbox-container">
				Date input
				<label class="control-label" for="date">Date</label> <input
					class="form-control" type="text" id="date" name="date" />
			</div>
			<script>
				$(document)
						.ready(
								function() {
									var date_input = $('input[name="date"]'); //our date input has the name "date"
									var container = $('.bootstrap-iso form').length > 0 ? $(
											'.bootstrap-iso form').parent()
											: "body";
									date_input.datepicker({
										format : 'mm/dd/yyyy',
										container : container,
										todayHighlight : true,
										autoclose : true,

									})
								})
			</script> -->

			<button type="submit" class="signupbtn">Search</button>
		</form>


	</div>
</body>
</html>