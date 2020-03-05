package com.bisn.City_Classified_And_Search.model;

public class User {

	public User() {
	}

	private int id;
	private boolean role;
	public User(int id, String firstName, String lastName, String email,boolean role, String password) {
		super();
		this.id = id;

		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.role=role;
		this.password = password;
	}

	private String firstName;
	private String lastName;
	private String email;
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", role=" + role + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + "]";
	}

	public boolean isRole() {
		return role;
	}

	
	public void setRole(boolean role) {
		this.role = role;
	}
}
