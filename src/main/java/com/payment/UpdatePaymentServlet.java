package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
		String pid = request.getParameter("payid");
		String cname = request.getParameter("cname");
		String propertyname = request.getParameter("propertyname");
		String propertysize = request.getParameter("propertysize");
		String paymentimp = request.getParameter("paymentimp");
		String totalamount = request.getParameter("totalamount");
		String cardno = request.getParameter("cardno");
		String username = request.getParameter("uname");
		
        boolean isTrue;
		
		isTrue = PaymentDBUtil.updatepayment(pid, cname, propertyname, propertysize, paymentimp, totalamount, cardno, username);
		
		if(isTrue == true) {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userpaymentaccount.jsp");
			dis.forward(request, response);
		}
		else {
		
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userpaymentaccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
