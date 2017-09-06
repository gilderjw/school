package com.example.facepamphlet;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

public class StatusTest {

	FacePamphletProfile uut;

	@Before
	public void setUp() {
		this.uut = new FacePamphletProfile("Louie");
	}

	// Normally I would use a mocking framework but in the interest of not bloating this .rar file
	// I have omitted it and the test is really simple.
	@Test
	public void testSetAndGetStatus() {
		String status = "EATING TENNIS BALL";

		this.uut.setStatus(status);

		assertEquals(status, this.uut.getStatus().getStatusText());
	}

	@Test
	public void testPastStatuses() {
		String[] status = {"EATING TENNIS BALL",
				"WOOF WOOF WOOF",
				"UPS MAN",
				"DINNER!",
				"MUST CATCH TAIL"
		};

		// Cycle through all the statuses in order
		for( String s : status ) {
			this.uut.setStatus(s);
		}

		// Assert that the current status is the last one in
		assertEquals(status[status.length-1], this.uut.getStatus().getStatusText());

		// Make sure our list has stuff in it (all but the last status)
		assertTrue( this.uut.getPastStatuses().size() == (status.length - 1) );

		// Assert that, for all items in our queue, they match with the correct
		// status from our array
		int i = 0;
		while( !this.uut.getPastStatuses().isEmpty() ) {
			assertEquals( this.uut.getPastStatuses().poll().getStatusText(), status[i++]);
		}
	}

	@Test
	public void testAddComment() {
		FacePamphletStatus status = new FacePamphletStatus("test status");

		assertFalse(status.getComments().hasNext());

		FacePamphletComment comment = new FacePamphletComment(this.uut, "test comment");
		status.addComment(comment);

		assertTrue(status.getComments().hasNext());

		assertEquals(comment, status.getComments().next());

	}
}
