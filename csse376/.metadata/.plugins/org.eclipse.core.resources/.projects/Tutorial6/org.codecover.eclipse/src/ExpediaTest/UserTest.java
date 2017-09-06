package ExpediaTest;

import java.util.Date;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import Expedia.Booking;
import Expedia.Car;
import Expedia.Discount;
import Expedia.Flight;
import Expedia.Hotel;
import Expedia.ServiceLocator;
import Expedia.User;

public class UserTest {
	private User target;
	private final Date StartDate = new Date(2009, 11, 1);
	private final Date EndDate = new Date(2009, 11, 30);

	@After
	public void TearDown() {
		this.target = null; // this is entirely unnecessary.. but I'm just
		// showing a usage of the TearDown method here
	}

	@Test
	public void TestDoubleMiles() {
		Car car = new Car(5);
		Flight flight = new Flight(this.StartDate, this.EndDate, 10000);
		this.target.bookWithDoubleMiles(new Booking[] { flight });
		Assert.assertEquals(5000, this.target.bonusFrequentFlierMiles, 0.01);
	}

	@Test
	public void TestDoubleMilesLessThan5k() {
		Car car = new Car(5);
		Flight flight = new Flight(this.StartDate, this.EndDate, 4500);
		this.target.bookWithDoubleMiles(new Booking[] { flight });
		Assert.assertEquals(9000, this.target.bonusFrequentFlierMiles, 0.01);
	}

	@Test
	public void testGetDiscountCover() {
		Discount target = new Discount(0.01, 9001);
		ServiceLocator.Instance().AddDiscount(target);
		this.target.book(new Booking[] {
				new Flight(this.StartDate, this.EndDate, 100), new Hotel(5),
				new Car(3) });
		Assert.assertEquals(1024.65, this.target.Price(), 0.01);

		target = new Discount(1.2, 9001);
		ServiceLocator.Instance().AddDiscount(target);
		this.target.book(new Booking[] {
				new Flight(this.StartDate, this.EndDate, 100), new Hotel(5),
				new Car(3) });
		// Assert.assertEquals(1024.65, this.target.Price(), 0.01);
	}

	@Before
	public void TestInitialize() {
		this.target = new User("Bob Dole");
	}

	@Test
	public void TestThatDiscountInitializes() {
		Discount target = new Discount(0.01, 1);
		ServiceLocator.Instance().AddDiscount(target);
		this.target.book(new Booking[] {
				new Flight(this.StartDate, this.EndDate, 100), new Hotel(5),
				new Car(3) });
		Assert.assertEquals(1024.65, this.target.Price(), 0.01);
	}

	@Test
	public void TestThatUserCanBookAHotalAndACar() {
		this.target.book(new Booking[] { new Car(5), new Hotel(5) });
		Assert.assertEquals(2, this.target.Bookings.size());
	}

	@Test
	public void TestThatUserCanBookAOnlyFlight() {
		this.target.book(new Booking[] { new Flight(this.StartDate,
				this.EndDate, 0) });
		Assert.assertEquals(1, this.target.Bookings.size());
	}

	@Test
	public void TestThatUserCanBookEverything() {
		this.target.book(new Booking[] {
				new Flight(this.StartDate, this.EndDate, 0), new Hotel(5),
				new Car(3) });
		Assert.assertEquals(3, this.target.Bookings.size());
	}

	@Test
	public void TestThatUserHasCorrectNumberOfFrequentFlyerMilesAfterOneFlight() {
		this.target.book(new Booking[] { new Flight(this.StartDate,
				this.EndDate, 500) });
		Assert.assertEquals(500, this.target.FrequentFlierMiles());
	}

	@Test
	public void TestThatUserHasFrequentFlierMilesAfterBooking() {
		this.target.book(new Booking[] {
				new Flight(this.StartDate, this.EndDate, 1), new Hotel(5),
				new Car(3) });
		Assert.assertTrue(0 < this.target.FrequentFlierMiles());
		Assert.assertEquals(3, this.target.Bookings.size());
	}

	@Test
	public void TestThatUserHasZeroFrequentFlierMilesOnInit() {
		Assert.assertEquals(0, this.target.FrequentFlierMiles());
	}

	@Test
	public void TestThatUserInitializes() {
		Assert.assertEquals("Bob Dole", this.target.Name);
	}

	@Test
	public void TestThatUserTotalCostIsCorrect() {
		Flight flight = new Flight(this.StartDate, this.EndDate, 500);
		this.target.book(new Booking[] { flight });
		Assert.assertEquals(flight.getBasePrice(), this.target.Price(), 0.01);
	}

	@Test
	public void TestThatUserTotalCostIsCorrectWhenMoreThanFlights() {
		Car car = new Car(5);
		Flight flight = new Flight(this.StartDate, this.EndDate, 500);
		this.target.book(new Booking[] { flight });
		this.target.book(new Booking[] { car });
		Assert.assertEquals(flight.getBasePrice() + car.getBasePrice(),
				this.target.Price(), 0.01);
	}
}
