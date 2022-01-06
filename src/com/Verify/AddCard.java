package com.Verify;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCard")
public class AddCard extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String PO = request.getParameter("PO");
			String NCard = request.getParameter("NCard");
			String address = request.getParameter("address");
			int zip =Integer.parseInt(request.getParameter("zip"));
			String phone = request.getParameter("phone");
			String Fname = request.getParameter("Fname");
			String expmonth = request.getParameter("expmonth");
			int expyear=Integer.parseInt(request.getParameter("expyear"));
			int cvv=Integer.parseInt(request.getParameter("cvv"));
			
			
			boolean isTr;
			isTr = PaymentDBUtil.AddCard(PO, NCard, address, zip, phone, Fname, expmonth, expyear,cvv);
			
			if(isTr == true) {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}else {
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}	
		}
}

