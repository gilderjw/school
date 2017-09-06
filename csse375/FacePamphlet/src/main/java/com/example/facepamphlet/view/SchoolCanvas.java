package com.example.facepamphlet.view;

import java.awt.Color;

import com.example.facepamphlet.Constants;

import acm.graphics.GLabel;

public class SchoolCanvas extends MyCanvas {

	private static final long serialVersionUID = 6622081084932428446L;

	public void displaySchool(String school) {
		this.removeAll();
		this.addName(school);
	}

	private void addName(String name) {
		GLabel Name = new GLabel("School: " + name);
		Name.setFont(Constants.PROFILE_NAME_FONT);
		Name.setColor(Color.BLUE);
		double x = Constants.LEFT_MARGIN;
		double y = Constants.TOP_MARGIN + Name.getHeight();
		this.add(Name, x, y);
	}
}
