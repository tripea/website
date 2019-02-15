<!DOCTYPE html>
<html>
<head>
<title>Bootstrap datepicket demo</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>

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



<!-- <script>
	$(document).ready(
			function() {

				$(".updateAmount").change(
						function() {
							var row = $(this).parent().parent();
							var price = row.find('td').eq(0).html();
							var temp = price +price;
							var qty = $(this).val();
							var td = row.find('td').eq(4);
							var result = price * qty;
							//alert(result);
							td.html(result);
							var finalAmountTd = $('#finalAmount');
							// To iterate all tr
							var totalPrice = 0;
							var rows = $(".rows");
							//alert(rows.length);
							rows.each(function() {
								totalPrice = totalPrice
										+ parseFloat($(this).find('td').eq(4)
												.html());

							});
							finalAmountTd.html(totalPrice);
							$('input[type="button"]').click(function(e) {
								$(this).closest('tr').remove()

							})
						});

			})
</script>
 -->





</head>
<form id="form" action="removeProduct">

	<body>

		<table class="table">
			<thead>
				<tr>
					<th>Per Day Amount Of Room</th>
					<th>Check In Date</th>
					<th>Check Out Date</th>
					<th>Total Amount</th>

				</tr>
			</thead>

			<tr class="rows">
				<td>${roomprice}</td>
				<td><input type="number" name="quantity" min="1" /></td>
				<td>

					<div class="col-sm-4">
						<div class="input-group date">
							<input type="text" class="form-control"><span
								class="input-group-addon"><i
								class="glyphicon glyphicon-calendar"></i></span>
						</div>
					</div>
				</td>
				<td><input type="number" name="quantity" min="1"
					id="updateAmount" /></td>

				<div class="col-sm-4">
					<div class="input-group date">
						<input type="text" class="form-control updateAmount"><span
							class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span>
					</div>
				</div>

				</td>
				<td id="finalAmount">${roomprice}</td>
			</tr>


			<script type="text/javascript">
function compute(){
    var x=0; var y = 0; var z = 0;
    for (i = 0; i < ${fn:length(cart.products)}; i++) {
        y=document.getElementById("quantity"+i).value;
        z=document.getElementById("price"+i).value;
        x = parseDouble(x)+parseDouble(y*z);
        document.getElementById("amount").value=x;
    }
}
</script>
		</table>

	</body>
</form>
</html>

