package com.bisn.City_Classified_And_Search.model;



public class Login {
	

	
	private String userName;
	private String passWord;
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Login(){}
	@Override
	public String toString() {
		return "Login [userName=" + userName + ", passWord=" + passWord + ", type=" + type + "]";
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
