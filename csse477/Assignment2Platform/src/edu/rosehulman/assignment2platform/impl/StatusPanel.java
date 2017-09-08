package edu.rosehulman.assignment2platform.impl;

import java.awt.Color;

import javax.swing.JLabel;
import javax.swing.JPanel;

public class StatusPanel extends JPanel {

	private static final long serialVersionUID = -2336734583390316341L;
	private JLabel currentStatus;

	public StatusPanel() {
		this.setSize(1024, 200);
		this.setBackground(Color.blue);
		this.currentStatus = new JLabel("Assignment 2 Loaded");
		this.add(this.currentStatus);
		this.setVisible(true);
		this.repaint();
	}

	public void setStatus(String s) {
		this.currentStatus.setText(s);
		this.repaint();
	}
}
