package com.example.facepamphlet.view;

import static com.example.facepamphlet.Constants.BOTTOM_MESSAGE_MARGIN;
import static com.example.facepamphlet.Constants.MESSAGE_FONT;

import acm.graphics.GCanvas;
import acm.graphics.GLabel;

/**
 * Superclass of all the Canvases.
 *
 */
public abstract class MyCanvas extends GCanvas {
	double lastX = 0;
	double lastY = 0;

	/**
	 * This method displays a message string near the bottom of the canvas.
	 * Every time this method is called, the previously displayed message (if
	 * any) is replaced by the new message text passed in.
	 */
	public void showMessage(String msg) {
		GLabel message = new GLabel(msg);
		double x = getWidth() / 2 - message.getWidth() * 3 / 4;
		double y = getHeight() - BOTTOM_MESSAGE_MARGIN;
		if (getElementAt(this.lastX, this.lastY) != null) {
			remove(getElementAt(this.lastX, this.lastY));
		}
		this.lastX = x;
		this.lastY = y;
		message.setFont(MESSAGE_FONT);
		add(message, x, y);
	}
}
