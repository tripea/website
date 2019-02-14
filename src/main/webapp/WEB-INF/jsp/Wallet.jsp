<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 
<!-- jQuery library -->
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
<!-- Latest compiled JavaScript -->
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Wallet UI</title>
</head>
<body>
${wallet.currentBalance}
	<div class="container">
		<div class="col-md-6">
			<h4>My Cash</h4>
			<jstl items="${currentBalance}">
			<tr>
			<td><a href="/getWallet/currentBalance=${wallet.currentBalance}">${wallet.currentBalance}</a>
			</td>
			</tr>
			</jstl>
			<h4>My Statement</h4>
			<jstl:forEach var="statement" items="${statements}">
				<tr>
				<td><a href="/getStatement?statementId=${statement.statementId}">${statement.statementId}</a></td>
				<td>${statement.wallet.profileId}</td>
				<td>${statement.transactionType}</td>
				<td>${statement.amount}</td>
				<td>${statement.transactionRemarks}</td>
				<td>${statement.transactionId}</td>
				<td>${statement.dateTime}</td>
				</tr>
			</jstl:forEach>
		</div>
		
	</div>
</body>
</html>