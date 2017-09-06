package com.example.facepamphlet;

import static org.junit.Assert.*;

import org.junit.Test;

import com.example.facepamphlet.model.Profile;

public class DatabaseTest {

	@Test
	public void testAddDeleteContainsProfile() throws Exception {
		Profile profile = new Profile("Name");
		Database.getInstance().addProfile(profile);
		assertEquals(Database.getInstance().getProfile("Name"), profile);
		assertTrue(Database.getInstance().containsProfile("Name"));
		Database.getInstance().deleteProfile("Name");
		assertEquals(Database.getInstance().getProfile("Name"), null);
		assertFalse(Database.getInstance().containsProfile("Name"));
	}

	@Test
	public void testSchool() throws Exception {
		assertFalse(Database.getInstance().schoolExists("School"));
		Database.getInstance().addSchool("School");
		assertTrue(Database.getInstance().schoolExists("School"));
		assertFalse(Database.getInstance().schoolExists("NotSchool"));
	}

	@Test
	public void testWorkplace() throws Exception {
		assertFalse(Database.getInstance().workplaceExists("Work"));
		Database.getInstance().addWorkplace("Work");
		assertTrue(Database.getInstance().workplaceExists("Work"));
		assertFalse(Database.getInstance().workplaceExists("NotWork"));
	}
}
