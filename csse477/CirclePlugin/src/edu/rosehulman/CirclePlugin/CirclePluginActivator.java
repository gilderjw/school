package edu.rosehulman.CirclePlugin;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;

import edu.rosehulman.assignment2platform.Platform;

public class CirclePluginActivator implements BundleActivator {

	private ServiceReference frameworkReference;
	private ServiceRegistration circleRegistration;

	@Override
	public void start(BundleContext context) throws Exception {
		this.frameworkReference = context.getServiceReference(Platform.class.getName());
		Platform platform = (Platform) context.getService(this.frameworkReference);

		CirclePluginImpl plugin = new CirclePluginImpl(platform);
		platform.registerExtension(plugin);

		this.circleRegistration = context.registerService(CirclePlugin.class.getName(), plugin, null);

		System.out.println("circle plugin loaded");
	}

	@Override
	public void stop(BundleContext context) throws Exception {
		context.ungetService(this.frameworkReference);
		this.circleRegistration.unregister();
		System.out.println("Circle plugin unloaded");

	}

}
