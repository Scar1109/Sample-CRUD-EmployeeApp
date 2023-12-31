package com.customer.model;

public class Customer {
	int cusId;
	private String firstName;
	private String lastName;
	private String email;
	
	public Customer(int cusId, String firstName, String lastName, String email) {
		super();
		this.cusId = cusId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}
	
	public Customer() {
		
	}

	// Getters and setters

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public int getId() {
		return cusId;
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

	public void setId(int id) {
		this.cusId = id;

	}

}
