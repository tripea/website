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
<body>


	Enter From City :
	<form>
		<input list="cities" name="cities">
		<datalist id="cities">
				<jstl:forEach var="flightList" items="${flightList}">
					<option value="${flightList.city}">
						
				</jstl:forEach>
		</datalist>
				<%-- 	<option value="${flightList.code}"> --%>
					
						
		

	<br>
	<br>

		Enter To City : <br>
		<input list="cities" name="cities">
		<datalist id="cities">
				<jstl:forEach var="flightList" items="${flightList}">
					<option value="${flightList.city}">
						
				</jstl:forEach>
		</datalist>
		<br>
		<br><input
			type="submit">
	</form>
</body>
</html>