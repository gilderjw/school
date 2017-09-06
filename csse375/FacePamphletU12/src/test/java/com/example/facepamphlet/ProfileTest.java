package com.example.facepamphlet;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;

public class ProfileTest {
	private static final String USER1 = "user1";
	private static final String USER2 = "user2";

	FacePamphletDatabase database;
	FacePamphletProfile profile1;
	FacePamphletProfile profile2;

	@Before
	public void setUp(){
		this.database = new FacePamphletDatabase();
		this.profile1 = new FacePamphletProfile(USER1);
		this.profile2 = new FacePamphletProfile(USER2);
	}

	@Test
	public void testAddProfile(){
		assertFalse(this.database.containsProfile(USER1));

		this.database.addProfile(this.profile1);

		assertTrue(this.database.containsProfile(USER1));

		assertEquals(this.database.getProfile(USER1), this.profile1);

		assertFalse(this.database.containsProfile(USER2));
	}

	@Test
	public void testRemoveProfile(){
		this.database.addProfile(this.profile1);
		this.database.addProfile(this.profile2);

		this.database.deleteProfile(USER1);

		assertFalse(this.database.containsProfile(USER1));
		assertTrue(this.database.containsProfile(USER2));
	}


}
