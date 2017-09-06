package com.example.facepamphlet.view;

import java.awt.Color;

import com.example.facepamphlet.Constants;

import acm.graphics.GLabel;

public class WorkplaceCanvas extends MyCanvas {

	private static final long serialVersionUID = 3516312731594347745L;

	public void displayWorkplace(String workplace) {
		this.removeAll();
		this.addName(workplace);
	}

	private void addName(String name) {
		GLabel Name = new GLabel("Workplace: " + name);
		Name.setFont(Constants.PROFILE_NAME_FONT);
		Name.setColor(Color.BLUE);
		double x = Constants.LEFT_MARGIN;
		double y = Constants.TOP_MARGIN + Name.getHeight();
		this.add(Name, x, y);
	}
}
