package com.example.facepamphlet.view;

import acm.graphics.GCanvas;
import acm.graphics.GLabel;

/**
 * Superclass of all the Canvases.
 *
 */
public abstract class MyCanvas extends GCanvas {

	/**
	 * Name of font used to display the application message at the bottom of the
	 * display canvas
	 */
	public static final String MESSAGE_FONT = "Dialog-18";

	/**
	 * The number of pixels in the vertical margin between the bottom of the
	 * canvas display area and the baseline for the message text that appears
	 * near the bottom of the display
	 */
	public static final double BOTTOM_MESSAGE_MARGIN = 20;

	private static final long serialVersionUID = 8349714108324734312L;
	double lastX = 0;
	double lastY = 0;


	/**
	 * This method displays a message string near the bottom of the canvas.
	 * Every time this method is called, the previously displayed message (if
	 * any) is replaced by the new message text passed in.
	 */
	public void showMessage(String msg) {
		GLabel message = new GLabel(msg);
		double x = (this.getWidth() / 2) - ((message.getWidth() * 3) / 4);
		double y = this.getHeight() - BOTTOM_MESSAGE_MARGIN;
		if (this.getElementAt(this.lastX, this.lastY) != null) {
			this.remove(this.getElementAt(this.lastX, this.lastY));
		}
		this.lastX = x;
		this.lastY = y;
		message.setFont(MESSAGE_FONT);
		this.add(message, x, y);
	}
}
