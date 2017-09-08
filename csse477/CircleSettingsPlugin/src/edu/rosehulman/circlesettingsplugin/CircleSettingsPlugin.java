package edu.rosehulman.circlesettingsplugin;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JPanel;

import edu.rosehulman.CirclePlugin.CirclePlugin;
import edu.rosehulman.assignment2platform.IGUIExtension;
import edu.rosehulman.assignment2platform.Platform;

public class CircleSettingsPlugin implements IGUIExtension {

	private Platform platform;
	private JPanel panel;
	private CirclePlugin plugin;

	public CircleSettingsPlugin(Platform platform, CirclePlugin plugin) {
		this.plugin = plugin;
		this.platform = platform;

		this.panel = new JPanel();
		this.panel.setBackground(Color.WHITE);

		JButton redButton = new JButton("Red");
		JButton blueButton = new JButton("Blue");

		redButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				CircleSettingsPlugin.this.plugin.setBackground(Color.red);
			}
		});

		blueButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				CircleSettingsPlugin.this.plugin.setBackground(Color.blue);
			}
		});

		this.panel.add(redButton);
		this.panel.add(blueButton);

		this.panel.setVisible(true);

		System.out.println("constructor called");
	}

	@Override
	public String getName() {
		return "CircleSettings";
	}

	@Override
	public JPanel getPanel() {
		return this.panel;
	}

}
