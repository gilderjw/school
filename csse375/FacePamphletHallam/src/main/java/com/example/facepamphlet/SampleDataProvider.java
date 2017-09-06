package com.example.facepamphlet;

import com.example.facepamphlet.model.Education;
import com.example.facepamphlet.model.Profile;
import com.example.facepamphlet.model.Workplace;

/**
 * This is just to provide the program with sample data.
 *
 */
public class SampleDataProvider {
	public static void addSampleData() {
		Database.getInstance().addSchool("Rose-Hulman");
		Database.getInstance().addSchool("ISU");
		Database.getInstance().addSchool("Purdue");

		Database.getInstance().addWorkplace("Google");
		Database.getInstance().addWorkplace("Microsoft");
		Database.getInstance().addWorkplace("Facebook");

		Profile bob = new Profile("Bob");
		bob.addEducation("Rose-Hulman", new Education("Rose-Hulman", "2000"));
		bob.addWorkplace("Google", new Workplace("Google", "2000", "2005"));
		Database.getInstance().addProfile(bob);

		Profile jane = new Profile("Jane");
		jane.addEducation("Rose-Hulman", new Education("ISU", "2003"));
		jane.addWorkplace("Microsoft", new Workplace("Microsoft", "2004", "2009"));
		Database.getInstance().addProfile(jane);

		Profile joe = new Profile("Joe");
		joe.addEducation("Purdue", new Education("Purdue", "2010"));
		joe.addWorkplace("Facebook", new Workplace("Facebook", "2010", "2013"));
		Database.getInstance().addProfile(joe);

		bob.addFriend("Jane");
		jane.addFriend("Bob");
		jane.addFriend("Joe");
		joe.addFriend("Jane");
	}
}
