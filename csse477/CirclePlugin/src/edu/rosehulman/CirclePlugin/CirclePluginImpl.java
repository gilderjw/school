package edu.rosehulman.CirclePlugin;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;

import javax.swing.JPanel;

import org.osgi.framework.ServiceReference;

import edu.rosehulman.assignment2platform.IGUIExtension;
import edu.rosehulman.assignment2platform.Platform;

public class CirclePluginImpl implements IGUIExtension, CirclePlugin {

	private Platform platform;
	private ServiceReference platformRef;
	private JPanel panel;

	@SuppressWarnings("serial")
	public CirclePluginImpl(Platform platform) {
		this.panel = new CirclePanel();
		this.panel.setBackground(Color.red);
		this.panel.setSize(1024, 720);
		this.platform = platform;
	}

	@Override
	public String getName() {
		return "Circle";
	}

	@Override
	public JPanel getPanel() {
		this.platform.setStatus("Circles are real NEAT-O");
		return this.panel;
	}

	private class CirclePanel extends JPanel {
		@Override
		protected void paintComponent(Graphics g) {
			super.paintComponent(g);
			Graphics2D g2 = (Graphics2D) g;

			g2.setStroke(new BasicStroke(10));
			g2.drawOval(50, 50, 300, 300);
		}
	}

	@Override
	public void setBackground(Color c) {
		this.panel.setBackground(c);
		this.platform.setStatus(c.toString() + " Circles are real NEAT-O");
		this.panel.repaint();
	}

}
