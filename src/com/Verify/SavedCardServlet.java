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


@WebServlet("/SavedCardServlet")
public class SavedCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();   //For alert
			response.setContentType("text/html");
				
			String CNo = request.getParameter("CNo");  
			String cvv = request.getParameter("cvv");  
			String zip = request.getParameter("zip"); 
			boolean isTrue;
			
			isTrue = PaymentDBUtil.Validate(CNo, cvv, zip);
			
			if(isTrue == true) {
				 
				List<Card> Card = PaymentDBUtil.getCard(CNo);
				request.setAttribute("Card", Card);
				
				RequestDispatcher dis =  request.getRequestDispatcher("confirmpay.jsp");
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