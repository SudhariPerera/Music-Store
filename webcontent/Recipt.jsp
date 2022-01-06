<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
		<title>Payment Recipt</title>
			<style>
				body {
				  font-family: Arial;
				  font-size: 17px;
				  padding: 8px;
				}

				* {
				  box-sizing: border-box;
				}

				.container {
				  background-color: #f2f2f2;
				  padding: 5px 20px 15px 20px;
				  border: 1px solid lightgrey;
				  border-radius: 3px;
				}

				tr:nth-child(even) {
				  background-color: #dddddd;
				}

				table, th, td {
					border: 1px solid black;
				}
			</style>
	</head>
	<body>
		<h2>Thank you for shopping with us...</h2>
		<div class="container">
		<table>
			<c:forEach var="cus" items="${cusDetails}">
			
			<c:set var="PayId" value="${cus.PayId}"/>
			<c:set var="CID" value="${cus.CID}"/>
			<c:set var="Pay_Option" value="${cus.Pay_Option}"/>
			<c:set var="Total_Price" value="${cus.Total_Price}"/>
			<c:set var="CardNo" value="${cus.CardNo}"/>
			
			<tr>
				<td>Customer ID</td>
				<td>${cus.CID}</td>
			</tr>
			<tr>
				<td>Payment ID</td>
				<td>${cus.PayId}</td>
			</tr>
			<tr>
				<td>Payment Option</td>
				<td>${cus.Pay_Option}</td>
			</tr>
			<tr>
				<td>Total Price</td>
				<td>${cus.Total_Price}</td>
			</tr>
			<tr>
				<td>Card Number</td>
				<td>${cus.CardNo}</td>
			</tr>

			</c:forEach>
		</table>
		
	<br>
	
	<br>
	<c:url value="deleteCard.jsp" var="deleteCard">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<br>
	<a href="${deleteCard}">
	<input type="button" name="deleteCard" value="Delete My Card Details">
	</a>
	
	</div>
	</body>
</html>	
	