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
		DatabaseSingleton.getInstance().addSchool("Rose-Hulman");
		DatabaseSingleton.getInstance().addSchool("ISU");
		DatabaseSingleton.getInstance().addSchool("Purdue");

		DatabaseSingleton.getInstance().addWorkplace("Google");
		DatabaseSingleton.getInstance().addWorkplace("Microsoft");
		DatabaseSingleton.getInstance().addWorkplace("Facebook");

		Profile bob = new Profile("Bob", "pass");
		bob.addEducation("Rose-Hulman", new Education("Rose-Hulman", "2000"));
		bob.addWorkplace("Google", new Workplace("Google", "2000", "2005"));
		DatabaseSingleton.getInstance().addProfile(bob);

		Profile jane = new Profile("Jane", "pass");
		jane.addEducation("Rose-Hulman", new Education("ISU", "2003"));
		jane.addWorkplace("Microsoft", new Workplace("Microsoft", "2004", "2009"));
		DatabaseSingleton.getInstance().addProfile(jane);

		Profile joe = new Profile("Joe", "pass");
		joe.addEducation("Purdue", new Education("Purdue", "2010"));
		joe.addWorkplace("Facebook", new Workplace("Facebook", "2010", "2013"));
		DatabaseSingleton.getInstance().addProfile(joe);

		bob.addFriend("Jane");
		jane.addFriend("Bob");
		jane.addFriend("Joe");
		joe.addFriend("Jane");
	}
}
