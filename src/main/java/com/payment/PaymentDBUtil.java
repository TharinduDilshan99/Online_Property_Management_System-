package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class PaymentDBUtil {
	
        private static boolean isSuccess;	    
	    private static Connection con = null;
        private static Statement stmt = null;
        private static ResultSet rs = null;
	
        public static List<Payment> validate(String userName) {
        	
        	ArrayList<Payment> pay = new ArrayList<>();

        	try {
        		con = DBConnect.getConnection();
    			stmt = con.createStatement();
        		String sql = "select * from payment where username='"+userName+"'";        		
                rs = stmt.executeQuery(sql);
        		
        		if(rs.next()) {
    				int pid = rs.getInt(1);
    				String cname = rs.getString(2);
    				String propertyname = rs.getString(3);
    				String propertysize = rs.getString(4);
    				String paymentimp = rs.getString(5);
    				String totalamount = rs.getString(6);
    				String cardno = rs.getString(7);
    				String userU = rs.getString(8);
    				
    				Payment p = new Payment(pid,cname,propertyname,propertysize,paymentimp,totalamount,cardno,userU);
    				pay.add(p);
    				
    			}
        		
        	}
        	catch(Exception e) {
    			e.printStackTrace();
    		}
        	
        	return pay;
        	
        }
        
        public static boolean insertpayment(String cname, String propertyname, String propertysize, String paymentimp, String totalamount, String cardno, String username) {
        	
        	boolean isSuccess = false;

        	try {
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();        		
        		String sql = "insert into payment values (0,'"+cname+"','"+propertyname+"','"+propertysize+"','"+paymentimp+"','"+totalamount+"','"+cardno+"','"+username+"')";
        		int rs = stmt.executeUpdate(sql);
        		
        		if(rs > 0) {
    				isSuccess = true;
    			} else {
    				isSuccess = false;
    			}
        		
        	}
        	catch(Exception e) {
    			e.printStackTrace();
    		}
        	
        	return isSuccess;
        }
        
    	public static boolean updatepayment(String pid, String cname, String propertyname, String propertysize, String paymentimp, String totalamount, String cardno, String username) {
    		
    		try {
    			
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    			String sql = "update payment set cname='"+cname+"',propertyname='"+propertyname+"',propertysize='"+propertysize+"',paymentimp='"+paymentimp+"',totalamount='"+totalamount+"',cardno='"+cardno+"',username='"+username+"'"
    					+ "where pid='"+pid+"'";
    			int rs = stmt.executeUpdate(sql);
    			
    			if(rs > 0) {
    				isSuccess = true;
    			} 
    			else {
    				isSuccess = false;
    			}
    			
    		}
    		catch(Exception e) {
    		    e.printStackTrace();
    		}
    	    return isSuccess;	
    	}
    	
    	public static List<Payment> getPaymentDetails(String pId) {
    		
    		int convertedPID = Integer.parseInt(pId);
    		
    		ArrayList<Payment> pay = new ArrayList<>();
    		
    		try {
    			
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    			String sql = "select * from payment where pid='"+convertedPID+"'";
    			rs = stmt.executeQuery(sql);
    			
    			while(rs.next()) {
    				int pid = rs.getInt(1);
    				String cname = rs.getString(2);
    				String propertyname = rs.getString(3);
    				String propertysize = rs.getString(4);
    				String paymentimp = rs.getString(5);
    				String totalamount = rs.getString(6);
    				String cardno = rs.getString(7);
    				String username = rs.getString(8);
    				
    				Payment p = new Payment(pid,cname,propertyname,propertysize,paymentimp,totalamount,cardno,username);
    				pay.add(p);
    			} 
    			
    		}
    		catch(Exception e) {
    		    e.printStackTrace();
    		}
    		
    		
    		return pay;
    		
    	}
    	
    	public static boolean deletePayment(String pid) {
    		
    		int convpId = Integer.parseInt(pid);
    		
    		try {
    			
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    			String sql = "delete from payment where pid='"+convpId+"'";
    			int rs = stmt.executeUpdate(sql);
    			
    			if(rs > 0) {
    				isSuccess = true;
    			} 
    			else {
    				isSuccess = false;
    			}
    			
    		}
    		catch(Exception e) {
    		    e.printStackTrace();
    		}
    		
    		
    		return isSuccess;
    		
    	}
    	
}
