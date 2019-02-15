<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script type='text/javascript'>
	$(function() {
		$('.input-group.date').datepicker({
			calendarWeeks : true,
			todayHighlight : true,
			autoclose : true
		});
	});
</script>
</head>
<body>

	<div class="container">
		<form action="saveHotel" method="GET">
			<h1>Hotel Booking</h1>
			<table>
				<tr>
					<td><select id="title" name="title" class="txtSelect"><option
								value="Mr">Mr</option>
							<option value="Mrs">Mrs</option>
							<option value="Ms">Ms</option></select></td>
					<td><input id="fName" name="fullName" type="text"
						class="txtInput" placeholder="Enter Full Name" value=""></td>
				</tr>
				<tr>
					<td><input name="email" id="emailId" autocomplete="off"
						type="text" class="txtInput" placeholder="Enter Email ID" value="">
					</td>
				</tr>
				<tr>
					<td>Enter Number Of Guests : <input name="numberOfGuest"
						type="number">
					</td>
				<tr>
					<td>Per Day Amount Of Room : ${roomprice}</td>
				</tr>
				<tr>
					<td>
						<br>
						<div class="row">
							<div class="col-sm-5">
								Check In Date <div class="input-group date">
									<input type="text" class="form-control" name="checkInDate"><span
										class="input-group-addon"><i
										class="glyphicon glyphicon-calendar"></i></span>
								</div>
							</div>
							<div class="col-sm-2"></div>
							<div class="col-sm-5">
								Check Out Date <div class="input-group date">
									<input type="text" class="form-control" name="checkInDate"><span
										class="input-group-addon"><i
										class="glyphicon glyphicon-calendar"></i></span>
								</div>
							</div>
							</div>
					</td>
				</tr>
				<tr>
					<td>Per Day Amount Of Room : ${roomprice}</td>
				</tr>
				</tr>
				<tr>
					<td>Book:<input type="submit">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->

<link rel="stylesheet"

	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<script

	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script

	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

<script

	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
$(document).ready(function() {

	$(".updateQuantity").change(function() {

		var row = $(this).parent().parent();

		var price = row.find('td').eq(1).html();

		var qty = $(this).val();

		var td = row.find('td').eq(4);

		var result = price * qty;

		//alert(result);

		td.html(result);

		var finalAmountTd = $('#finalAmount');	
 		var totalPrice = 0;

		var rows = $(".rows");
 
		rows.each(function() {

			totalPrice = totalPrice + parseFloat($(this).find('td').eq(4).html());

		}); 

		finalAmountTd.html(totalPrice);

		$('input[type="button"]').click(function(e){

			   $(this).closest('tr').remove()

			})

		

	});

	

})

</script>
<style>
body {font-family: Arial, Helvetica, sans-serif;background-color: gray;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
.whiteText{
  color: green;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.required  {
     color:red;
      }
button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 100px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
 </style>   
</head>

<body>
 	<jsp:include page="Header.jsp" />
 
	<form id="form" action="removeProduct">
  
 <div class="container">
		<form action="saveHotel" method="GET">
			<h1>Hotel Booking</h1>
 		   
  <div class="container">
    <p class="whiteText">Please fill in this form to Book Hotel.</p>
    <hr>

    <label class="whiteText"  for="email"><b>Email<span class="required">*</span></b></label>
    <input type="text" placeholder="Enter Email"  pattern="[^ @]*@[^ @]*" name="email" value="" required="req0uired">
      <label class="whiteText"  for="userName"><b>Full Name<span class="required">*</span></b></label>
    <input type="text" placeholder="Enter Full Name" name="fullName" required="required">
     
     <label class="whiteText"  for="number"><b>Enter Number Of Guests<span class="required">*</span></b></label>
    <input type="text" placeholder="Enter Number Of Guests" name="numberOfGuest" required="required">
    
   <table class="table">
    <thead>
      <tr>
        <th>Check In Date</th>
        <th>Check Out Date</th>
        <th>Check Out Date</th>
        <th>Check Out Date</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn" onclick="return Validate()">Sign Up</button>
    </div>
  </div>
			
			
			
			
			
			
			
			
			
			
			
			<table>
				<tr>
					<td><select id="title" name="title" class="txtSelect"><option
								value="Mr">Mr</option>
							<option value="Mrs">Mrs</option>
							<option value="Ms">Ms</option></select></td>
					<td><input id="fName" name="fullName" type="text"
						class="txtInput" placeholder="Enter Full Name" value=""></td>
				</tr>
				<tr>
					<td><input name="email" id="emailId" autocomplete="off"
						type="text" class="txtInput" placeholder="Enter Email ID" value="">
					</td>
				</tr>
				<tr>
					<td>Enter Number Of Guests : <input name="numberOfGuest"
						type="number">
					</td>
				<tr>
					<td>Per Day Amount Of Room : ${roomprice}</td>
				</tr>
				<tr>
					<td>
						<br>
						<div class="row">
							<div class="col-sm-5">
								Check In Date <div class="input-group date">
									<input type="text" class="form-control" name="checkInDate"><span
										class="input-group-addon"><i
										class="glyphicon glyphicon-calendar"></i></span>
								</div>
							</div>
							<div class="col-sm-2"></div>
							<div class="col-sm-5">
								Check Out Date <div class="input-group date">
									<input type="text" class="form-control" name="checkInDate"><span
										class="input-group-addon"><i
										class="glyphicon glyphicon-calendar"></i></span>
								</div>
							</div>
							</div>
					</td>
				</tr>
				<tr>
					<td>Per Day Amount Of Room : ${roomprice}</td>
				</tr>
				</tr>
				<tr>
					<td>Book:<input type="submit">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
 
 
 
 
 
 
 
 
 
 
 
		<div>

			<table class="table table-bordered">



				<tr style="font-style: italic;">

					<!-- <th>CartId </th> -->

					<th>Items</th>

					<th>Price</th>

					<th>Quantity</th>

					<th>Remove from cart</th>

					<th>Product Total</th>

				</tr>

				<%-- <c:forEach var="updateCart" items="${updateCart}"> --%>

				<%-- <tr>

				<td>${updateCart.cartId}</td>

				</tr> --%>

				<c:forEach var="updateCart" items="${cart.items}">

					<tr class="rows" style="font-style: italic;">

						<td><input type="text" name="productName" readonly="readonly"

							value="${updateCart.productName}" size="25""></td>

						<td>${updateCart.price}</td>

						<td> <input type="number" name="quantity" min="1" value="${updateCart.quantity}" class="updateQuantity"/></td>

						<td> <input type="button" id="removeItem" value="Remove"/></td>

						<%-- <td><!-- <input type="text" id="qnt" name="quantity" min="1"

							style="width: 50px; height: 30px;" value="0" /> --> <a id="removeProduct" href="remove/${updateCart.productName}/quantity=${updateCart.quantity}">Remove</a> 

						</td> --%>

						<td>${updateCart.price*updateCart.quantity}</td>

					</tr>

				</c:forEach>

				<!-- <tr>

					<td><input type="button" style="margin-left: 25px"

						value="remove" onclick="check()"></td>

				</tr> -->

				<tr>

					<td style="font-style: italic; font-weight: bold">Cart Total</td>

					<td></td>

					<td></td>

					<td></td>

					<td id="finalAmount">${cart.totalPrice}</td>

					

				</tr>

				<tr>

					<td style="font-style: italic; font-weight: bold">Proceed To

						Checkout :</td>

					<td></td>

					<td></td>

					<td></td>

					<td><input value="Checkout" type="submit"></td>

				</tr>

				<%-- </c:forEach> --%>

			</table>

		</div>

	</form>

</body>

</html>