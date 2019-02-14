<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form action="profileDetails" method="get">
<div class="container">
 <div class="form-group">
      <label for="Full Name">Full Name:</label>
      <input type="text" class="form-control" id="fullName" placeholder="Enter fullName" name="fullName">
    </div>
 <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="contactNumber">Email:</label>
      <input type="text" class="form-control" id="contactNumber" placeholder="Enter contactNumber" name="contactNumber">
    </div>
     <div class="form-group">
      <label for="maritialStatus">maritialStatus:</label>
      <input type="radio" class="form-control" id="maritialStatus" name="maritialStatus">male<br><input type="radio" class="form-control" id="maritialStatus" name="maritialStatus">female<br>
    </div>
</div>
















</form>
</body>
</html>