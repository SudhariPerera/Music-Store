<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Update Account</title>
	<link rel="stylesheet" type = "text/css" href="CSS/formstyles.css" >

</head>
<body>

	<% 
		int PID=Integer.parseInt(request.getParameter("PID"));
		int CID=Integer.parseInt(request.getParameter("CID"));
		String PO = request.getParameter("PO");
		String NCard = request.getParameter("NCard");
		String address = request.getParameter("address");
		int zip =Integer.parseInt(request.getParameter("zip"));
		String phone = request.getParameter("phone");
		String Fname = request.getParameter("Fname");
		String expmonth = request.getParameter("expmonth");
		int expyear=Integer.parseInt(request.getParameter("expyear"));
		int cvv=Integer.parseInt(request.getParameter("cvv"));

	%>

	<header class="header">
			<br>
			<img src="Images/logo.png" class = "logo">
			<h3 class = "logotext" ><b>Heart of Perfect Music</b></h3>
			<br>
	</header>
		<!--Navigation Menu-->
				
		<!--Navigation bar-->
			<ul class="navi">
				<li class="navi"><a href="index.jsp">Home</a></li>
				<li class="navi"><a href="login.jsp">Login</a></li>
				<li class="navi"><a href="customerinsert.jsp">Register</a></li>
				
			</ul>

		<br> 
		
	<div class  = "form-bg">

		<form class="form-box" action = "/UpdateCard" method = "post">
			<h1>Update Account</h1> <br>
		
			<h3> Payment Id </h3>
			 <input class="text-fild" type = "text" name = "PID" value = "<%= PID %>" readonly> <br>
			<h3> Customer ID </h3>
			<input class="text-fild" type = "text" name = "CID" value = "<%= CID %>" readonly> <br>
			<h3> Card Type </h3>
			 <input class="text-fild" type = "text" name = "PO" value = "<%= PO %>" readonly> <br>
			<h3> Name on cart </h3>
			 <input class="text-fild" type = "text" name = "NCard" value = "<%= NCard %>" > <br>
			<h3>Address </h3>
			 <input class="text-fild" type = "text" name = "lname" value = "<%= lname %>" > <br>
			<h3>ZIP </h3>
			 <input class="text-fild" type = "text" name = "zip" value = "<%= zip %>" > <br>
			<h3>Phone Number </h3>
			 <input class="text-fild" type = "text" name = "phone" value = "<%= phone  %>" > <br>
			<h3>Full Name </h3>
			 <input class="text-fild" type = "text" name = "Fname" value = "<%= Fname %>" readonly> <br>
			<h3>Exp month  </h3>
			 <input class="text-fild" type = "text" name = "expmonth" value = "<%= expmonth %>" >
			<h3>Exp year  </h3>
			 <input class="text-fild" type = "text" name = "expyear" value = "<%= expyear %>" >
			<h3>CVV  </h3>
			 <input class="text-fild" type = "text" name = " cvv" value = "<%=  cvv %>" >
	
			<input class = "but" type = "submit" name = "submit" value = "Update Card Details" > <br><br>
		</form>
	</div>


</body>
</html>