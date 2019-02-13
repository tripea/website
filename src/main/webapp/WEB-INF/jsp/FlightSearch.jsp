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


<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script type='text/javascript'>
	$(function() {
		$('.input-group.date').datepicker({                                                           //Function For DatePicker
			calendarWeeks : true,
			todayHighlight : true,
			autoclose : true
		});
	});
</script>
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
				<b> Source </b>: <input list="cities" class="form-control"
					list="cities" name="source" required="required"> <datalist
						id="cities">
						<jstl:forEach var="list" items="${flightList}">                             //Jstl to retrieve the values from the database
							<option value="${list.city} (${list.code}) ">
						</jstl:forEach>
					</datalist>
			</div>

			<div class="form-group">
				<b> Destination: <input list="cities" class="form-control"
					list="cities" name="destination" required="required"> <datalist                                     
						id="cities">
						<jstl:forEach var="list" items="${flightList}">
							<option value="${list.city} (${list.code}) ">                          //Jstl to retrieve the values from the database
						</jstl:forEach>
					</datalist>
			</div>
			<div class="input-group date">
			
			Date:	<input type="text" class="form-control"><span
					class="input-group-addon"><i
					class="glyphicon glyphicon-calendar"></i></span>                                     
			</div>


			<button type="submit" class="signupbtn">Search</button>
		</form>
	</div>
</body>
</html>