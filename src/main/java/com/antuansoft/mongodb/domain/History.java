package com.antuansoft.mongodb.domain;

import java.io.Serializable;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "campaign" )
public class History  implements Serializable{
	

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String type;
	private String date;
	private Object data;
	
	
	
	public History() {
		super();
		// TODO Auto-generated constructor stub
	}
	public History(String id, String type, String date , Object data) {
		super();
		this.id = id;
		this.date = date;
		this.type = type;
		this.data = data;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
}
