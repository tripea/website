<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<form>
		<div id="Participentfieldwrap">
			<div class="form-group">
				<label for="usr">Name:</label> <input type="text"
					class="form-control" id="usr">
				<div class="form-group">
					<label for="usr">LastName:</label> <input type="text"
						class="form-control" id="usr">
					<div class="form-group">
						<label for="usr">Age:</label> <input type="text"
							class="form-control" id="usr">
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript">
    var participantsField = document.getElementById("Participentfieldwrap"),
        form = document.getElementsByTagName("
			form")[0], ContestantNum = 4, i;
			for (i = 0; i < ContestantNum; i++) {
				var clone = participantsField.cloneNode(true);
				form.appendChild(clone);
			}
		</script>
</body>
</html>
