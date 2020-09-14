package com.bloodbank.donor;

public class Donor {
	private String name;
	private String username;
	private String emailAddress;
	private String password;
	private String address;
	private String city;
	private String sex;
	private int weight;
	private String dob;
	private String bloodGroup;
	private String contactNumber;	
	
	public Donor(String name, String username, String emailAddress, String password, String address, String city, String sex, int weight, String dob, String bloodGroup, String contactNumber) {
		this.name = name;
		this.username = username;
		this.emailAddress = emailAddress;
		this.password = password;
		this.address = address;
		this.city = city;
		this.sex = sex;
		this.weight = weight;
		this.dob = dob;
		this.bloodGroup = bloodGroup;
		this.contactNumber = contactNumber;

	}

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	
}
