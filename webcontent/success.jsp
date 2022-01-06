<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Go to Pay</title>
<style>

input[type=submit] {
  width: 50%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  padding: 6px 20px;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  text-align: center;
}
form,h1{
			font-family: Sans-Serif;
		}

</style>
</head>
<body>
<div>

<h1>SUCCESSFULLY ADDED!</h1>


<a href = "SavedCard.jsp">
		<input type ="submit" name = "submit" value ="GO TO PAY">
		</a>
</div>

</body>
</html>