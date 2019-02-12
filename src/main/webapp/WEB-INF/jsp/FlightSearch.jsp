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
<style type="text/css">

</style>

</head>
<body>


	Enter Source City :
	<form action="searchFlight" method="get">
		<input list="cities" name="source">
		<datalist id="cities">
			<jstl:forEach var="flightList" items="${flightList}">
				<option value="${flightList.city}">
			</jstl:forEach>
		</datalist>
		<br> Enter Destination City : <br> <input list="cities"
			name="destination">
		<datalist id="cities">
			<jstl:forEach var="flightList" items="${flightList}">
				<option value="${flightList.city}">
			</jstl:forEach>
		</datalist>
		<br> <br>
		<input type="submit">
	</form>
</body>
</html>