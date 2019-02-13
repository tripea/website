<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<body>
<h1>${message} </h1>


 <jstl:forEach  var="seat" items="${message.flight.seats}">
 	${seat.flightClass }
 </jstl:forEach>
</body>
</html>