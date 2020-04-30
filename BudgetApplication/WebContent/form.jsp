<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css" >
<title>FORM</title>
</head>
<script src ="http://code.jquery.com/jquery-latest.min.js"></script>
<script> 
	function calculateTotal(){
		 $("#quantity").mouseout(function (){			 
			 	var price  = $("#price").val();
				var quantity = $("#quantity").val();
				var total = price * quantity;
				$("#totalPrice").val(total); 	 	
		 });    	 
	}
</script>
<body>
<form action="" method="">
	<fieldset>
		<legend>Set 1</legend>
		<div>
			<span><label for="firstname">Date:</label></span>
			<input type="date" name="date">
		</div>
		<br>	
		<div>
			<span><label for="item">Item:</label></span>
			<input type="text" name="item">			
		</div>
		<br>
		<div>
			<span><label for="price">Price($):</label></span>
			<input type="text" name="price" id="price">
		</div>
		<br>
		<div>
			<span><label for="quantity">Quantity:</label></span>
			<input type="text" name="quantity" id="quantity">
			<script>			
			calculateTotal(); 				
			</script>
		</div>		
		<br>
		<div>
			<span><label for="totalprice">Total Price($):</label></span>
			<input type="text" name="totalPrice" id="totalPrice" value="" readonly>
		</div>		
	</fieldset>
	<fieldset>
			<legend>Set 2</legend>
			<div>
				<span><label for="dailyTotal">Daily Total</label></span>
				<input type="text" name="dailyTotal" readonly>
			</div>
			<br>
			<div>
				<span><label for="weeklyTotal">Weekly Total</label></span>
				<input type="text" name="weeklyTotal" readonly>
			</div>
			<br>
			<div>
				<span><label for="monthlyTotal">Monthly Total</label></span>
				<input type="text" name="monthlyTotal" readonly>
			</div>			
	</fieldset>
</form>
</body>
</html>