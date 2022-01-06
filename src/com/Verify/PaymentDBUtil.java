package com.Verify;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

public class PaymentDBUtil {
	
	private static boolean isSuccess; 		
		private static Connection con = null;
		private static Statement stat = null;
		private static ResultSet rs = null;
		
		public static boolean validate(String CID) {
			
			try {
				con = DBConnect.getConnection();
				stat = con.createStatement();
				String sql = "select * from card where CID='"+CID+"'";
				rs = stat.executeQuery(sql);
				
				if(rs.next() ) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}

			public static boolean validatecardAddress1(String Cno, String cvv, String zip) {
				// TODO Auto-generated method stub
				return false;
			}

			public static List<Card> getCard(String cNo) {
				// TODO Auto-generated method stub
				return null;
			}

			public static boolean Validate(String cNo, String cvv, String zip) {
				// TODO Auto-generated method stub
				return false;
			}

			public static boolean AddCard(String pO, String nCard, String address, int zip, String phone, String fname,
					String expmonth, int expyear, int cvv) {
				// TODO Auto-generated method stub
				return false;
			}

			public static boolean deleteCard(String pid) {
				// TODO Auto-generated method stub
				return false;
			}

			public static List<Card> getCustomerDetails(String pid) {
				// TODO Auto-generated method stub
				return null;
			}


}
