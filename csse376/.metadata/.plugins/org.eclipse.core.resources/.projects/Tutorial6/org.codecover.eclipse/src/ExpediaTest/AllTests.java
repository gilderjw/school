package ExpediaTest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({ BookingTest.class, HotelTest.class, CarTest.class,
		DiscountTest.class, FlightTest.class, UserTest.class })
public class AllTests {
	public static void main(String args[]) {
		org.junit.runner.JUnitCore.main("ExpediaTest.AllTests");
	}
}
