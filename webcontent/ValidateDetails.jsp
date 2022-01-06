<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate User</title>
<link rel="stylesheet" type = "text/css" href="stylepage.css" >
</head>
<body>
	<header class="header">
			<br>
			<img src="Images/logo.png" class = "logo">
			<h3 class = "logotext" ><b>Heart of Perfect Music</b></h3>
			<br>
	</header>
		<!--Navigation bar-->
			<ul class="navi">
				<li class="navi"><a href="Home.html">Home</a></li>
				<li class="navi"><a href="Packages.html">Profile</a></li>
				<li class="navi"><a href="#">Cart</a></li>
			</ul>
		<br> 
		<h1 class = "title">Songs</h1>
	
<div style="text-align: center">

	<form action="login" method="post">
		       
		<label for="email"> Email : </label> 
			<input type="text" name="EmailAddress" placeholder="abcd@gmail.com" size="30"><br><br>
		<label for="password">Password : </label>
			<input type="Password" name="Password" placeholder="Enter your password "><br>
			<br>
		<input type="submit" name="submit" value="Confirm">
	</form>
	</div>
</body>

</html> 
