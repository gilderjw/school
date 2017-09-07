package edu.rosehulman.assignment2platform;
import java.util.ArrayList;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;

public class Activator implements BundleActivator {

	private ArrayList<IGUIExtension> extensions;
	
	@Override
	public void start(BundleContext arg0) throws Exception {
		this.extensions = new ArrayList<IGUIExtension>();
		System.out.println("Assignment 2 Platform Loaded");
		
		
	}

	@Override
	public void stop(BundleContext arg0) throws Exception {
		System.out.println("Assignment 2 Platform closed");
		
	}
	
	/**
	 * Used by plugins to register to the platform
	 * @param ext extension to register
	 */
	public void registerExtension(IGUIExtension ext) {
		this.extensions.add(ext);
	}

	/**
	 * Used by plugins to set the text on the status bar
	 * @param status Text to set the status bar to
	 */
	public void setStatus(String status) {
		
	}
}
