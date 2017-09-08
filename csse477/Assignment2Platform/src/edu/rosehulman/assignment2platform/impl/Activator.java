package edu.rosehulman.assignment2platform.impl;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

import edu.rosehulman.assignment2platform.Platform;

public class Activator implements BundleActivator {

	private ServiceRegistration platformServiceRegistration;

	@Override
	public void start(BundleContext context) throws Exception {
		Platform platform = new PlatformImpl();
		this.platformServiceRegistration = context.registerService(Platform.class.getName(), platform, null);
		System.out.println("Assignment 2 Platform Loaded");

	}

	@Override
	public void stop(BundleContext context) throws Exception {
		this.platformServiceRegistration.unregister();
		System.out.println("Assignment 2 Stopped");

	}

}
