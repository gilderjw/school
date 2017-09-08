package edu.rosehulman.assignment2platform.impl;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JPanel;

import edu.rosehulman.assignment2platform.IGUIExtension;
import edu.rosehulman.assignment2platform.Platform;

public class ListingPanel extends JPanel {

	private static final long serialVersionUID = -4142227357532670849L;
	private ArrayList<IGUIExtension> extensions;
	private Platform framework;

	public ListingPanel(PlatformImpl platformImpl) {
		this.framework = platformImpl;
		this.extensions = new ArrayList<IGUIExtension>();
		this.setPreferredSize(new Dimension(100, 720));
		this.setBackground(Color.GREEN);
		this.setVisible(true);
	}

	public void addExtension(IGUIExtension ext) {
		JButton nBTN = new JButton();
		nBTN.setText(ext.getName());
		nBTN.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				ListingPanel.this.framework.setPanelFocus(ext);
			}
		});
		this.add(nBTN);
		this.repaint();
		System.out.println(ext.getName() + " added to listing");
	}

}
