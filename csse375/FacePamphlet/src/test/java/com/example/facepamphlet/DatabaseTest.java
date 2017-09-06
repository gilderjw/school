package com.example.facepamphlet;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.example.facepamphlet.model.Profile;

public class DatabaseTest {

	@Test
	public void testAddDeleteContainsProfile() throws Exception {
		Profile profile = new Profile("Name", "pass");
		DatabaseSingleton.getInstance().addProfile(profile);
		assertEquals(DatabaseSingleton.getInstance().getProfile("Name"), profile);
		assertTrue(DatabaseSingleton.getInstance().containsProfile("Name"));
		DatabaseSingleton.getInstance().deleteProfile("Name");
		assertEquals(DatabaseSingleton.getInstance().getProfile("Name"), null);
		assertFalse(DatabaseSingleton.getInstance().containsProfile("Name"));
	}

	@Test
	public void testSchool() throws Exception {
		assertFalse(DatabaseSingleton.getInstance().schoolExists("School"));
		DatabaseSingleton.getInstance().addSchool("School");
		assertTrue(DatabaseSingleton.getInstance().schoolExists("School"));
		assertFalse(DatabaseSingleton.getInstance().schoolExists("NotSchool"));
	}

	@Test
	public void testWorkplace() throws Exception {
		assertFalse(DatabaseSingleton.getInstance().workplaceExists("Work"));
		DatabaseSingleton.getInstance().addWorkplace("Work");
		assertTrue(DatabaseSingleton.getInstance().workplaceExists("Work"));
		assertFalse(DatabaseSingleton.getInstance().workplaceExists("NotWork"));
	}
}
