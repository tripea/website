<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="book" method="post">
	<select id="title" name="title" class="txtSelect"><option value="Mr">Mr</option>
	<option value="Mrs">Mrs</option><option value="Ms">Ms</option></select>
	<input id="fName" name="fName" type="text" class="txtInput" placeholder="Enter First Name" value="">
	<input id="lName" name="lName" type="text" class="txtInput" placeholder="Enter Last Name" value="">
	<input name="email" id="email" autocomplete="off" type="text" class="txtInput" placeholder="Enter Email ID" value="">
	<input id="mNo" name="mNo" class="txtInputContactInfo txtInputContactInfo" type="text" value="">
		<div class="btnPayNowOuter padding20"><a class="primaryBtn btnPayNow"><div>PAY NOW</div></a></div>
	</form>
</body>
</html>