package com.Verify;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;

@WebServlet("/deleteCardServlet")
public class deleteCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String PID = null;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String PID = request.getParameter("PID");
			
			boolean isTrue = PaymentDBUtil.deleteCard(PID);
			
			if(isTrue == true) {
				out.println("<script type = 'text/javascript'>");
					out.println("alert('Account Deleted');");
					out.println("location = 'index.jsp'");
				out.println("</script>");
				
			}
			
			else {
				boolean Card = PaymentDBUtil.deleteCard(PID);
				request.setAttribute("Card", Card);
						
				RequestDispatcher dispatcher = request.getRequestDispatcher("Recipt.jsp");
				dispatcher.forward(request, response);
		}

	}

		public static String getPid() {
			return PID;
		}
}
