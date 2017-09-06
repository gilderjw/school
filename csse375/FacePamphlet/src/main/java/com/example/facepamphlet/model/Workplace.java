package com.example.facepamphlet.model;

import java.io.Serializable;

public class Workplace implements Serializable{
	private static final long serialVersionUID = -7594839276553488250L;

	private String name;
	private String startDate;
	private String endDate;

	public Workplace(String name, String startDate, String endDate) {
		this.name = name;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartDate() {
		return this.startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return this.endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
}
