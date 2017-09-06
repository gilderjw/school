package ExpediaTest;

import org.junit.Assert;
import org.junit.Test;

import Expedia.Hotel;

public class HotelTest {

	@Test
	public void testgetRoomOccupant() {
		Hotel target = new Hotel(10);
		Assert.assertEquals(target.getRoomOccupant(0), 0);
	}

	@Test
	public void TestHotelCover() {
		Hotel target = new Hotel(10);
		Assert.assertEquals(target.getMiles(), 0);
		Assert.assertEquals(target.AvailableRooms(), 0);

	}

	@Test
	public void TestThatHotelHasCorrectBasePriceForOneDayStay() {
		Hotel target = new Hotel(1);
		Assert.assertEquals(45, target.getBasePrice(), 0.01);
	}

	@Test
	public void TestThatHotelHasCorrectBasePriceForTenDaysStay() {
		Hotel target = new Hotel(10);
		Assert.assertEquals(450, target.getBasePrice(), 0.01);
	}

	@Test
	public void TestThatHotelHasCorrectBasePriceForTwoDayStay() {
		Hotel target = new Hotel(2);
		Assert.assertEquals(90, target.getBasePrice(), 0.01);
	}

	@Test(expected = RuntimeException.class)
	public void TestThatHotelThrowsOnBadLength() {
		new Hotel(-5);
	}

}
