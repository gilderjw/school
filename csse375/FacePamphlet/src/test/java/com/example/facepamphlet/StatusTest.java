package com.example.facepamphlet;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.Queue;

import org.junit.Before;
import org.junit.Test;

import com.example.facepamphlet.model.Profile;
import com.example.facepamphlet.model.Status;

// I had to refactor these tests to support the new status types
public class StatusTest {

	Profile uut, friend, enemy;


	@Before
	public void setUp() {
		this.uut = new Profile("Louie", "pass");

		//add the friend
		this.friend = new Profile("friend", "pass");
		DatabaseSingleton.getInstance().addProfile(this.friend);
		this.uut.addFriend("friend");

		//add enemy
		this.enemy = new Profile("enemy", "pass");
		DatabaseSingleton.getInstance().addProfile(this.enemy);
	}

	// Normally I would use a mocking framework but in the interest of not
	// bloating this .rar file
	// I have omitted it and the test is really simple.
	@Test
	public void testSetAndGetStatus() {
		String status = "EATING TENNIS BALL";

		this.uut.setStatus(status, false);

		assertEquals(status, this.uut.getStatus(this.friend).getContent());
	}

	@Test
	public void testPastStatuses() {
		String[] status = { "EATING TENNIS BALL", "WOOF WOOF WOOF", "UPS MAN", "DINNER!", "MUST CATCH TAIL" };

		// Cycle through all the statuses in order
		for (String s : status) {
			this.uut.setStatus(s, false);
		}

		// Assert that the current status is the last one in
		assertEquals(status[status.length - 1], this.uut.getStatus(this.friend).getContent());

		// Make sure our list has stuff in it (all but the last status)
		assertTrue(this.uut.getPastStatuses(this.friend).size() == (status.length - 1));

		// Assert that, for all items in our queue, they match with the correct
		// status from our array
		int i = 0;
		Queue<Status> squeue = this.uut.getPastStatuses(this.friend);
		while (!squeue.isEmpty()) {

			assertEquals(squeue.poll().getContent(), status[i++]);
		}
	}

	//This new test is for testing if the privacy feature works
	@Test
	public void testPrivacy() {
		this.uut.setStatus("pub", false); //set public status

		assertEquals("pub", this.uut.getStatus(this.friend).getContent());
		assertEquals("pub", this.uut.getStatus(this.enemy).getContent());

		this.uut.setStatus("private", true);
		assertEquals("private", this.uut.getStatus(this.friend).getContent());
		assertEquals("", this.uut.getStatus(this.enemy).getContent());

		assertEquals("pub", this.uut.getPastStatuses(this.friend).peek().getContent());
		assertEquals("pub", this.uut.getPastStatuses(this.enemy).peek().getContent());

		this.uut.setStatus("private", false); //does not really matter, we just wanna move the private one to the queue

		assertEquals(2, this.uut.getPastStatuses(this.friend).size());
		assertEquals(1, this.uut.getPastStatuses(this.enemy).size());


	}
}
