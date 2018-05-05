package com.antuansoft.mongodb.domain;

import java.io.Serializable;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Document(collection="user") 	 	
public class User  implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String username;
	private String dob;
	private String password;
	private String email;
	private String address;
	private String zip;
	private String city;
	private String country;
	private int role;

	
	

	public User() {
		super();		
	}



	public User(String id, String username, String dob, String password, String email, String address, String zip, String city, String country, int role) {
		super();
		this.id = id;
		this.username = username;
		this.dob = dob;
		this.password = password;
		this.email = email;
		this.address = address;
		this.zip = zip;
		this.city = city;
		this.country = country;
		this.role = role;
	}

	
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}



	public int getRole() {
		return role;
	}



	public void setRole(int role) {
		this.role = role;
	}



	public String getDob() {
		return dob;
	}



	public void setDob(String dob) {
		this.dob = dob;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getZip() {
		return zip;
	}



	public void setZip(String zip) {
		this.zip = zip;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}
	
	
	
	
	
}
