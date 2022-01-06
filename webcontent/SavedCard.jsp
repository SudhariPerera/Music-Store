<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Saved Card Details</title>
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

<h1>Saved Card Details</h1>

	<div class="full">
			<div class="all">
			<div class="container">
     		<form action ="/Already" method="post">

				Card Number<input type = "text" name = "CNo" required> <br>
				CVV<input type = "text" name = "cvv" required> <br>
				ZIP Code<input type = "text" name = "zip" required> <br>
	
			<label>
				<input type ="submit" name = "submit" value ="Complete Payment">
			</label>
			<label><a href= "Update.jsp">
				<input type ="submit" name = "submit" value ="Update Card Details"></a>
			</label>
			<br>
				<div class="total">
				<div class="container">
				  	<h4> Order Summary <span class="price" style="color:black"><b>4</b></span></h4>
					  	<p><a href="#">Machyenge</a> <span class="price">Rs.415</span></p>
					  	<p><a href="#">Himi Nathi Pemakata</a> <span class="price">Rs.298</span></p>
					  	<p><a href="#">Cheap Thrills</a> <span class="price">Rs.658</span></p>
					  	<p><a href="#">Tum Hi Ho</a> <span class="price">Rs.345</span></p>
				  <hr>
				  
				  <p>Total <span class="price" style="color:black"><b>Rs.1716</b></span></p>
				</div>
				</div>
	
			</form>
			</div>
			</div>
	</div>
</body>
</html>