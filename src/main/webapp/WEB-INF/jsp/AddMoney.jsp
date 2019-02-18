<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Money</title>
</head>
<body>
	<div class="container">

		<div style="text-align: center; border: 1px #5E4485">
			<h4
				style="font-family: Arial, Helvetica, sans-serif; font-size: 2vw; color: black;">
				Add Money</h4>
			<div class="form-group" style="font-size: 2vw;">
				<label for="usr">Enter Amount(In Rupees):</label> <input type="text"
					class="form-control" id="usr">
			</div>
			<br> <br>
			<button class="btn btn-info" role="button"
				style="background-color: black; color: white; size: 100px;">Submit</button>
				<jstl var="addMoney" item="addMoney">
				<p>{$addMoney.addMoney}</p>
				</jstl>
		</div>
	</div>
</body>
</html>