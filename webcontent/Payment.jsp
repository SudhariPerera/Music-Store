<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
		<style>
			body {
			  font-family: Arial;
			  font-size: 17px;
			  padding: 8px;
			}

			* {
			  box-sizing: border-box;
			}

			.full {
			  display: -ms-flexbox; /* IE10 */
			  display: flex;
			  -ms-flex-wrap: wrap; /* IE10 */
			  flex-wrap: wrap;
			  margin: 0 -16px;
			}

			.total {
			  -ms-flex: 25%; /* IE10 */
			  flex: 25%;
			}

			.card {
			  -ms-flex: 50%; /* IE10 */
			  flex: 50%;
			}

			.all {
			  -ms-flex: 75%; /* IE10 */
			  flex: 75%;
			}

			.full,
			.card,
			.all {
			  padding: 0 16px;
			}

			.container {
			  background-color: #f2f2f2;
			  padding: 5px 20px 15px 20px;
			  border: 1px solid lightgrey;
			  border-radius: 3px;
			}

			input[type=text] {
			  width: 100%;
			  margin-bottom: 20px;
			  padding: 12px;
			  border: 1px solid #ccc;
			  border-radius: 3px;
			}

			label {
			  margin-bottom: 10px;
			  display: block;
			}

			.icon-container {
			  margin-bottom: 20px;
			  padding: 7px 0;
			  font-size: 24px;
			}

			.btn {
			  background-color: #04AA6D;
			  color: white;
			  padding: 12px;
			  margin: 10px 0;
			  border: none;
			  width: 100%;
			  border-radius: 3px;
			  cursor: pointer;
			  font-size: 17px;
			}

			.btn:hover {
			  background-color: #45a049;
			}

			a {
			  color: #2196F3;
			}

			hr {
			  border: 1px solid lightgrey;
			}

			span.price {
			  float: right;
			  color: grey;
			}

			@media (max-width: 800px) {
			  .full {
				flex-direction: column-reverse;
			  }
			  .total {
				margin-bottom: 20px;
			  }
			}
		</style>
	</head>
	<body>

	<h2>Checkout Form</h2>

		<div class="full">
			<div class="all">
			<div class="container">
				<form action="Recipt.jsp" method="post">
				  
				<div class="card">
				<h3>Add Card and Shipping Details</h3>
					<label for="PO">Card type</label>
							<input type="text" id="PO" name="PO" placeholder="Credit card" required>	
					<label for="cname">Name on Card</label>
							<input type="text" id="cname" name="cname" placeholder="Sudhari S. Perera" required>
					<label for="CNo">Credit card number</label>
							<input type="text" id="CNo" name="CNo" placeholder="2222-3333-4444-1111" required>
					<label for="address">Address</label>
							<input type = "text" name = "address" placeholder="Wennappuwa" required > 
					<label for="zip ">ZipCode</label>
							<input type = "text" id="zip" name = "zip " placeholder="5000" required >
					<label for="phone">Phone Number</label>
							<input type = "text" name = "Pnumber" placeholder="077xxxxxxx" required > 
					<label for="Fname">Full Name</label>
							<input type = "text" name = "Fname" placeholder="Sudhari S. Perera" required> 
					<label for="expmonth">Exp Month</label>
							<input type="text" id="expmonth" name="expmonth" placeholder="September" required>	
										
				<div class="full">
					<div class="card">
						<label for="expyear">Exp Year</label>
								<input type="text" id="expyear" name="expyear" placeholder="2024">
					</div>
						  
					 <div class="card">
						<label for="cvv">CVV</label>
								<input type="text" id="cvv" name="cvv" placeholder="352">
					 </div>
				</div>
				
			 </div>
					  
			</div>
					<label>
						<input type="submit" value="Add New Card Details" class="btn">
					</label>
			</form>
				
				<label>
					<a href = "SavedCard.jsp">
						<input type="submit" value="Saved Details" class="btn"></a>
					</label>
			</div>
		</div>
			  

	</body>
</html>
