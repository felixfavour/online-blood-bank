package com.bloodbank.lifesaver;

public class Lifesaver {
	private String name;
	private String contactNumber;
	private String city;
	private String email;
	
	public Lifesaver(String name, String contactNumber, String city, String email) {
		this.name = name;
		this.contactNumber = contactNumber;
		this.city = city;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public String getCity() {
		return city;
	}

	public String getEmail() {
		return email;
	}
	
	
	
}
