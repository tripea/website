<!-- Shubham Raut -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Select Seats</title>
<style type="text/css">
body {
	background-color: #d2d2d2;
}

.seats {
	background-color: #f1f1f1;
}

.occupied {
	background-color: gray;
	padding: 10px;
}
</style>

</head>
<body>
	<%-- ${seats } --%>
	<h1>Select Seats</h1>


	<a href="">Book Flight</a>

	<div class="container-fluid">
		<div class="row seats">
			<div class="col-lg-4">
				<img alt="cockpit"
					src="https://github.com/tripea/website-images/blob/master/cockpit.png?raw=true">
			</div>
			<div class="col-lg-4">

				<jstl:forEach var="seat" items="${seats }">
					<jstl:if test="${seat.available }">



						<input type="checkbox" class="myinput">
					</jstl:if>
					<jstl:if test="${!seat.available }">
						<input class="occupied" type="checkbox" disabled="disabled">
					</jstl:if>
				</jstl:forEach>




			</div>
			<div class="col-lg-4">
				<img alt="tail"
					src="https://github.com/tripea/website-images/blob/master/tail.png?raw=true">
			</div>

			<input type="submit" value="">

		</div>
	</div>
</body>
</html>