package com.antuansoft.mongodb.domain;

import java.io.Serializable;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "country" )
public class Country  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String[] country;
	public Country() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Country(String[] country) {
		super();
		this.country = country;
		
	}
	public String[] getCountry() {
		return country;
	}
	public void setCountry(String[] country) {
		this.country = country;
	}
}
