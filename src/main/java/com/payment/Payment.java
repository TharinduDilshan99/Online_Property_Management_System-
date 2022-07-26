package com.payment;

public class Payment {
	 private int pid;
	 private String cname;
	 private String propertyname;
	 private String propertysize;
	 private String paymentimp;
	 private String totalamount;
	 private String cardno;
	 private String userName;
	public Payment(int pid, String cname, String propertyname, String propertysize, String paymentimp,
			String totalamount, String cardno, String userName) {
		this.pid = pid;
		this.cname = cname;
		this.propertyname = propertyname;
		this.propertysize = propertysize;
		this.paymentimp = paymentimp;
		this.totalamount = totalamount;
		this.cardno = cardno;
		this.userName = userName;
	}
	
	public int getPid() {
		return pid;
	}

	public String getCname() {
		return cname;
	}

	public String getPropertyname() {
		return propertyname;
	}

	public String getPropertysize() {
		return propertysize;
	}

	public String getPaymentimp() {
		return paymentimp;
	}

	public String getTotalamount() {
		return totalamount;
	}

	public String getCardno() {
		return cardno;
	}

	public String getUserName() {
		return userName;
	}
	 
	
}
