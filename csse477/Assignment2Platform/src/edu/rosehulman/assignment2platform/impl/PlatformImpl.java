package edu.rosehulman.assignment2platform.impl;

import java.awt.BorderLayout;
import java.awt.Color;
import java.util.HashMap;

import javax.swing.JFrame;
import javax.swing.JPanel;

import org.osgi.framework.ServiceReference;

import edu.rosehulman.assignment2platform.IGUIExtension;
import edu.rosehulman.assignment2platform.Platform;

public class PlatformImpl implements Platform {
	private ServiceReference registerReference;
	private HashMap<String, IGUIExtension> extensions;
	private ListingPanel listingPanel;
	private StatusPanel statusPanel;
	private JPanel currentPanel;
	private JFrame frame;

	public PlatformImpl() {
		this.currentPanel = new JPanel();
		this.frame = new JFrame();
		this.listingPanel = new ListingPanel(this);
		this.statusPanel = new StatusPanel();

		this.extensions = new HashMap<String, IGUIExtension>();

		this.frame.setTitle("Assignment2");
		this.frame.setSize(1024, 720);
		this.frame.setVisible(true);

		this.currentPanel.setVisible(true);
		this.currentPanel.setBackground(Color.GRAY);

		this.frame.add(this.listingPanel, BorderLayout.WEST);
		this.frame.add(this.statusPanel, BorderLayout.SOUTH);
		this.frame.add(this.currentPanel, BorderLayout.CENTER);

		System.out.println("Assignment 2 Platform Loaded");
	}

	/**
	 * Used by plugins to register to the platform
	 *
	 * @param ext
	 *            extension to register
	 */

	@Override
	public void registerExtension(IGUIExtension ext) {
		this.extensions.put(ext.getName(), ext);
		this.listingPanel.addExtension(ext);
		System.out.println(ext.getName() + " registered");
	}

	/**
	 * Used by the ListingPanel to change which extension is focused
	 *
	 * @param ext
	 *            extension to display
	 */
	@Override
	public void setPanelFocus(IGUIExtension ext) {
		this.frame.remove(this.currentPanel);
		this.currentPanel = ext.getPanel();
		this.frame.add(this.currentPanel);
		this.frame.repaint();
		System.out.println("New Panel");
	}

	/**
	 * Used by plugins to set the text on the status bar
	 *
	 * @param status
	 *            Text to set the status bar to
	 */
	@Override
	public void setStatus(String status) {
		this.statusPanel.setStatus(status);
	}
}
