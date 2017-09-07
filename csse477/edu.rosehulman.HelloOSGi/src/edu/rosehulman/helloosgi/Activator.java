package edu.rosehulman.helloosgi;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import edu.rosehulman.GreetingService.GreetingService;
import edu.rosehulman.ListWorkingDirectoryService.ListWorkingDirectoryService;

public class Activator implements BundleActivator {
	private ServiceReference greetingServiceReference;
	private ServiceReference listDirsServiceReference;
	public void start(BundleContext context) throws Exception {
		System.out.println("Hello World!!");
		
		greetingServiceReference = context.getServiceReference(GreetingService.class.getName());
		GreetingService greetingService = (GreetingService)	context.getService(greetingServiceReference);
		System.out.println(greetingService.sayHello());
		
		listDirsServiceReference = context.getServiceReference(ListWorkingDirectoryService.class.getName());
		ListWorkingDirectoryService listService = (ListWorkingDirectoryService) context.getService(listDirsServiceReference);
		System.out.println(listService.listDirs());
		
	}

	public void stop(BundleContext context) throws Exception
	{
		System.out.println("Goodbye World!!");
		context.ungetService(greetingServiceReference);
	}
}
