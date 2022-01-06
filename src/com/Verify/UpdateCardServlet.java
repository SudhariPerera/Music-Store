package com.Verify;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;

@WebServlet("/UpdateCardServlet")
public class UpdateCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PID = null;
	private ServletRequest request;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		boolean isTrue;
	}
	
			String PO = request.getParameter("PO");
			String NCard = request.getParameter("NCard");
			String address = request.getParameter("address");
			int zip =Integer.parseInt(request.getParameter("zip"));
			String phone = request.getParameter("phone");
			String Fname = request.getParameter("Fname");
			String expmonth = request.getParameter("expmonth");
			int expyear=Integer.parseInt(request.getParameter("expyear"));
			int cvv=Integer.parseInt(request.getParameter("cvv"));
			
			isTr = PaymentDBUtil.AddCard(PO, NCard, address, zip, phone, Fname, expmonth, expyear,cvv);	
			
			if(isTrue == true) {
				
				List<Card> Card = PaymentDBUtil.getCustomerDetails(PID);
				request.setAttribute("Card", Card);
				RequestDispatcher dis = request.getRequestDispatcher("SavedCard.jsp");
				ServletResponse response;
				dis.forward(request, response);
				
			}
			
			else {
				List<Card> Card = PaymentDBUtil.getCustomerDetails(PID);
				request.setAttribute("Card", Card);
				
				PrintWriter out;
				out.println("<script type = 'text/javascript'>");
					out.println("alert('Update Failed. Try Again Later');");
					out.println("location = 'login.jsp'");
				out.println("</script>");
			}
				
		}
}

