package com.youthdew.model;

public class MemberVO {

	private String USER_ID;
	private String USER_PW;
	private String USER_NAME;
	private String BIRTH;
	private String TEL;
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getBIRTH() {
		return BIRTH;
	}
	public void setBIRTH(String bIRTH) {
		USER_NAME = bIRTH;
	}
	public String getTEL() {
		return TEL;
	}
	public void setTEL(String tEL) {
		TEL = tEL;
	}
	@Override
	public String toString() {
		return "MemberVO [USER_ID=" + USER_ID + ", USER_PW=" + USER_PW + ", USER_NAME=" + USER_NAME
				+ ", BIRTH=" + BIRTH + ", TEL=" + TEL + "]";
	}
	public MemberVO(String uSER_ID, String uSER_PW, String uSER_NAME, String bIRTH, String tEL) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
		USER_NAME = uSER_NAME;
		BIRTH = bIRTH;
		TEL = tEL;
	}
	public MemberVO(String uSER_ID, String uSER_PW) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
	}
	
	public MemberVO() {
	      
	   }
	
	
}
