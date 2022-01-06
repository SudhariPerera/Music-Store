package com.Verify;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;

@WebServlet(name = "verifyLoginServlet.java")

public class verifyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		boolean isTrue;
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String EmailAddress = request.getParameter("EmailAddress");
		String Password = request.getParameter("Password");
		
		isTrue = userDBUtil.Validate(EmailAddress, Password);
		
		if(isTrue == true) { 			
			List<user> user = userDBUtil.getuser(EmailAddress);
			request.setAttribute("user", user );
			
			RequestDispatcher dis =  request.getRequestDispatcher("Payment.jsp");
			dis.forward(request,response);
		}
			  
		else {
			out.println("<script type = 'text/javascript'>");
				out.println("alert('Your Email or Password is invalid');");
				out.println("location = 'ValidateDetails.jsp'");
			out.println("</script>");
		}
	}
}

