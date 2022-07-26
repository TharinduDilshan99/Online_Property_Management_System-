package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentInsert")
public class PaymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
		String cname = request.getParameter("cname");
		String propertyname = request.getParameter("propertyname");
		String propertysize = request.getParameter("propertysize");
		String paymentimp = request.getParameter("paymentimp");
		String totalamount = request.getParameter("totalamount");
		String cardno = request.getParameter("cardno");
		String username = request.getParameter("uid");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertpayment(cname, propertyname, propertysize, paymentimp, totalamount, cardno, username);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}		
		
	}

}
