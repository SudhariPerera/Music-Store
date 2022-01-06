package com.Verify;

public class user {
		
		private int CID;
		private String FirstName;
		private String LastName;
		private String EmailAddress;
		private String Password;
		
		//constructor
		public user(int CID, String FirstName, String LastName, String EmailAddress, String Password) {
			
			this.CID= CID;
			this.FirstName= FirstName;
			this.LastName = LastName;
			this.EmailAddress = EmailAddress;
			this.Password = Password;
		}
		//getters
		public int getCID() {
			return CID;
		}
		public String getFirstName() {
			return FirstName;
		}
		public String getLastName() {
			return LastName;
		}
		public String getEmailAddress() {
			return EmailAddress;
		}
		public String getPassword() {
			return Password;
		}
}
