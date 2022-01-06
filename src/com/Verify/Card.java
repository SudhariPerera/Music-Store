package com.Verify;

public class Card {

		private int PayID;
		private int CID;
		private String PO;
		private String NCard;
		private String address;
		private int zip;
		private String phone;
		private String Fname;
		private String expmonth;
		private int expyear;
		private int cvv;
		
		public Card(int PayID, int CID, String PO, String NCard, String address, int zip, String phone,String Fname, String expmonth,int expyear,int cvv) {
			
			this.PayID = PayID;
			this.CID = CID;
			this.PO = PO;
			this.NCard = NCard;
			this.address = address;
			this.zip = zip;
			this.phone = phone;
			this.Fname = Fname;
			this.expmonth = expmonth;
			this.expyear = expyear;
			this.cvv = cvv;
		}
		public int getPayID() {
			return PayID;
		}
		
		public int getCID() {
			return CID;
		}
		
		public String getPO() {
			return PO;
		}
		
		public String getNCard() {
			return NCard;
		}
		
		public String getaddress() {
			return address;
		}
		
		public int getzip() {
			return zip;
		}
		
		public String getphone() {
			return phone;
		}
		
		public String getFname() {
			return Fname;
		}
		
		public String getexpmonth() {
			return expmonth;
		}
		
		public int getexpyear() {
			return expyear;
		}
		
		public int getcvv() {
			return cvv;
		}
}
