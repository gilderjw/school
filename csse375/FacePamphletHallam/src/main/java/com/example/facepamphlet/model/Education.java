package com.example.facepamphlet.model;

public class Education {
	private String school;
	private String graduation;
	
	public Education(String school, String graduation) {
		this.school = school;
		this.graduation = graduation;
	}
	
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getGraduation() {
		return graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
}
