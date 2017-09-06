package com.example.facepamphlet.model;

import java.io.Serializable;

public class Education implements Serializable {

	private static final long serialVersionUID = -8530992164345932372L;

	private String school;
	private String graduation;

	public Education(String school, String graduation) {
		this.school = school;
		this.graduation = graduation;
	}

	public String getSchool() {
		return this.school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getGraduation() {
		return this.graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
}
