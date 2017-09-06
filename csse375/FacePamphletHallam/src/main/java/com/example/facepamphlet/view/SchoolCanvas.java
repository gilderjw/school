package com.example.facepamphlet.view;

import static com.example.facepamphlet.Constants.LEFT_MARGIN;
import static com.example.facepamphlet.Constants.PROFILE_NAME_FONT;
import static com.example.facepamphlet.Constants.TOP_MARGIN;

import java.awt.Color;

import acm.graphics.GLabel;

public class SchoolCanvas extends MyCanvas {

	public void displaySchool(String school) {
		removeAll();
		addName(school);
	}

	private void addName(String name) {
		GLabel Name = new GLabel("School: " + name);
		Name.setFont(PROFILE_NAME_FONT);
		Name.setColor(Color.BLUE);
		double x = LEFT_MARGIN;
		double y = TOP_MARGIN + Name.getHeight();
		add(Name, x, y);
	}
}
