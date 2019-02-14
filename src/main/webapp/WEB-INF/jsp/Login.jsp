<!-- shabzan -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- <script type="text/javascript">
function alertName(){
alert("Invalid Credentials");
} 
</script> -->
</head>
<body>
<h1>${message}</h1>
<form action="loginPage" method="get">
	Enter UserName: <input type="text" name="userName" required="required"/><br/>
	Enter PassWord : <input type="password" name="password" required="required"/><br/>
	<input type="submit" />
</form>
</body>
</html>