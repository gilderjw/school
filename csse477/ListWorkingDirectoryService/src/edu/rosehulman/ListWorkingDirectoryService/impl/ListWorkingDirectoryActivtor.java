package edu.rosehulman.ListWorkingDirectoryService.impl;

import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

import edu.rosehulman.ListWorkingDirectoryService.ListWorkingDirectoryService;

public class ListWorkingDirectoryActivtor implements BundleActivator {
	private ServiceRegistration listServiceRegistration;
	@Override
	public void start(BundleContext context) throws
		Exception {
			ListWorkingDirectoryService listService = new
					ListWorkingDirectoryServiceImpl();
			listServiceRegistration = context.registerService(
			ListWorkingDirectoryService.class.getName(), listService,
			null);
	}
	
	@Override
	public void stop(BundleContext context) throws Exception
	{
		listServiceRegistration.unregister();
	}
}
