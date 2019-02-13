<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="jstl" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wallet UI</title>
</head>
<body>
${statements}
	<div class="container">
		<div class="col-md-6">
			<h4>My Cash</h4>
			<jstl items="$">
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
		<div class="col-md-6">
			<h4>Reward Bonus</h4>
			<form action="Reward" method="get">
     Enter Reward Bonus Card Secret Digit <input type="text" name="bonusCard"/><br/>
     </form>
		</div>
	</div>
</body>
</html>