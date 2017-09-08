package edu.rosehulman.circlesettingsplugin;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

import edu.rosehulman.CirclePlugin.CirclePlugin;
import edu.rosehulman.assignment2platform.Platform;

/**
 * The activator class controls the plug-in life cycle
 */
public class Activator implements BundleActivator {

	private ServiceReference platformRef;
	private ServiceReference circleRef;

	@Override
	public void start(BundleContext context) throws Exception {
		this.platformRef = context.getServiceReference(Platform.class.getName());
		Platform platform = (Platform) context.getService(this.platformRef);

		this.circleRef = context.getServiceReference(CirclePlugin.class.getName());
		CirclePlugin cPlugin = (CirclePlugin) context.getService(this.circleRef);

		CircleSettingsPlugin plugin = new CircleSettingsPlugin(platform, cPlugin);

		platform.registerExtension(plugin);

		System.out.println("Circle settings loaded");
	}

	@Override
	public void stop(BundleContext context) throws Exception {
		context.ungetService(this.platformRef);
		context.ungetService(this.circleRef);
	}
}
