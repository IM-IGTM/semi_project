package com.coffee.login;

public class Member {

		String m_regID;
		String m_regPW;
		String m_regPW2;
		String m_regName;
		String m_regAddr;
		int m_regPhoneNumer;
		String m_regEmail;
		
		public Member() {
			// TODO Auto-generated constructor stub
		}

		public Member(String m_regID, String m_regPW, String m_regPW2, String m_regName, String m_regAddr,
				int m_regPhoneNumer, String m_regEmail) {
			super();
			this.m_regID = m_regID;
			this.m_regPW = m_regPW;
			this.m_regPW2 = m_regPW2;
			this.m_regName = m_regName;
			this.m_regAddr = m_regAddr;
			this.m_regPhoneNumer = m_regPhoneNumer;
			this.m_regEmail = m_regEmail;
		}

		public String getM_regID() {
			return m_regID;
		}

		public void setM_regID(String m_regID) {
			this.m_regID = m_regID;
		}

		public String getM_regPW() {
			return m_regPW;
		}

		public void setM_regPW(String m_regPW) {
			this.m_regPW = m_regPW;
		}

		public String getM_regPW2() {
			return m_regPW2;
		}

		public void setM_regPW2(String m_regPW2) {
			this.m_regPW2 = m_regPW2;
		}

		public String getM_regName() {
			return m_regName;
		}

		public void setM_regName(String m_regName) {
			this.m_regName = m_regName;
		}

		public String getM_regAddr() {
			return m_regAddr;
		}

		public void setM_regAddr(String m_regAddr) {
			this.m_regAddr = m_regAddr;
		}

		public int getM_regPhoneNumer() {
			return m_regPhoneNumer;
		}

		public void setM_regPhoneNumer(int m_regPhoneNumer) {
			this.m_regPhoneNumer = m_regPhoneNumer;
		}

		public String getM_regEmail() {
			return m_regEmail;
		}

		public void setM_regEmail(String m_regEmail) {
			this.m_regEmail = m_regEmail;
		}
		
		
}
