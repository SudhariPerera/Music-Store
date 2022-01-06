package com.Verify;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class userDBUtil {
		
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		private static boolean isSuccess;

		public static boolean Validate(String EmailAddress, String Password) {
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from customer where EmailAddress = '"+EmailAddress+"' and Password = '"+Password+"' ";
				rs =  stmt.executeQuery(sql); //RUN SQL
				
				if (rs.next()){
					isSuccess = true;
				}
				
				else { 
					isSuccess = false;
				}
			}
			
			catch(Exception e){
				e.printStackTrace();
				
			}
			
			return isSuccess;
		}

			
			public static List<user> getuser (String emailAddress){
				
				ArrayList<user> getuseR = new ArrayList<>();
				
				try {
					
					con = DBConnect.getConnection();
					stmt = con.createStatement();
					String sql = "select * from customer where EmailAddress='"+emailAddress+"'";
					rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						int CID = rs.getInt(1);
						String FirstName = rs.getString(2);
						String LastName = rs.getString(3);
						String EmailAddress = rs.getString(4);
						String Password = rs.getString(5);
						 
						user payT = new user(CID, FirstName, LastName, EmailAddress, Password);
						getuseR.add(payT);
					}
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				return getuseR;
			}

}		
	