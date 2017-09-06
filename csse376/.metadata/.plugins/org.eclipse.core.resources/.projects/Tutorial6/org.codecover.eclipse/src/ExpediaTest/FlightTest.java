package ExpediaTest;

import java.util.Date;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import Expedia.Flight;

public class FlightTest {
	private Flight targetFlight;
	private final Date StartDate = new Date(2009, 11, 1);
	private final Date EndDate = new Date(2009, 11, 30);

	@Before
	public void TestInitialize() {
		this.targetFlight = new Flight(this.StartDate, this.EndDate, 0);
	}

	@Test
	public void testNumberExceptions() {
		try {
			new Flight(this.EndDate, this.StartDate, 500);
			Assert.fail("no exception");
		} catch (Exception e) {
			Assert.assertTrue("End date cannot be before start date!".equals(e
					.getMessage()));
		}

		try {
			new Flight(this.StartDate, this.EndDate, -10);
			Assert.fail("no exception");
		} catch (Exception e) {
			Assert.assertTrue("Miles must be positive!".equals(e.getMessage()));
		}
	}

	@Test
	public void testNumberPassenger() {
		Flight target = new Flight(this.StartDate, this.EndDate, 500);
		Assert.assertEquals(0, target.NumberOfPassengers());
	}

	@Test
	public void TestThatFlightHasCorrectBasePriceForSameDayFlight() {
		Flight target = new Flight(new Date(), new Date(), 0);
		Assert.assertEquals(200, target.getBasePrice(), 0.001);
	}

	@Test
	public void TestThatFlightHasCorrectMilesAfterConstruction() {
		Flight target = new Flight(this.StartDate, this.EndDate, 500);
		Assert.assertEquals(500, target.Miles);
	}

	@Test
	public void TestThatFlightInitializes() {
		Assert.assertNotNull(this.targetFlight);
	}
}
