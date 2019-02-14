<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

jQuery library
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

Latest compiled JavaScript
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
	
	
<style>
.btn {
	float: right;
}

.table {
	width: 100%;
}
</style>
<title>Wallet UI</title>
</head>
<body>

	<br>
	<!-- <div class="panel panel-default">
    <div class="panel-body">A Basic Panel</div>
  </div> -->
	<div class="container">
		<div class="col-md-6">
			<h4>My TripEasy Money</h4>
			<jstl items="${currentBalance}">
			<tr>
				<td><a
					href="/getWallet/currentBalance=${wallet.currentBalance}">${wallet.currentBalance}</a>
				</td>
			</tr>
			<a href="#" class="btn btn-info" role="button">Add Money</a> 
			</jstl >
			<br> <br> <br>
			<h4>My Statement</h4>

			<table class="table table-hover">
				<thead>
					<tr>
						<th>Profile-Id</th>
						<th>Transaction Type</th>
						<th>Amount</th>
						<th>Transaction Remarks</th>
						<th>Transaction ID</th>
						<th>Date-Time</th>
					</tr>
				</thead>
				<tbody>
					<jstl:forEach var="statement" items="${wallet.statements}">
						<tr>
							<td><a
								href="/getStatement?statementId=${statement.statementId}">${statement.statementId}</a></td>
							<td>${statement.wallet.profileId}</td>
							<td>${statement.transactionType}</td>
							<td>${statement.amount}</td>
							<td>${statement.transactionRemarks}</td>
							<td>${statement.transactionId}</td>
							<td>${statement.dateTime}</td>
						</tr>
					</jstl:forEach>
				</tbody>
			</table>
		</div>

	</div>
</body>
</html>