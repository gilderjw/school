package com.example.facepamphlet;
/*
 * File: FacePamphletDatabase.java
 * -------------------------------
 * This class keeps track of the profiles of all users in the
 * FacePamphlet application.  Note that profile names are case
 * sensitive, so that "ALICE" and "alice" are NOT the same name.
 */

import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class FacePamphletDatabase implements Serializable {

	/* private instance variables */
	private static final long serialVersionUID = -1289440875668514272L;

	private Map<String, FacePamphletProfile> profiles = new HashMap<String, FacePamphletProfile>();

	/**
	 * This method adds the given profile to the database.  If the
	 * name associated with the profile is the same as an existing
	 * name in the database, the existing profile is replaced by
	 * the new profile passed in.
	 */
	public void addProfile(FacePamphletProfile profile) {
		if(!this.profiles.containsKey(profile.getName())) {
			this.profiles.put(profile.getName(), profile);
		}
		else{
			this.profiles.remove(profile.getName());
			this.profiles.put(profile.getName(), profile);
		}
	}

	/**
	 * This method returns the profile associated with the given name
	 * in the database.  If there is no profile in the database with
	 * the given name, the method returns null.
	 */
	public FacePamphletProfile getProfile(String name) {
		return this.profiles.get(name);
	}


	/**
	 * This method removes the profile associated with the given name
	 * from the database.  It also updates the list of friends of all
	 * other profiles in the database to make sure that this name is
	 * removed from the list of friends of any other profile.
	 *
	 * If there is no profile in the database with the given name, then
	 * the database is unchanged after calling this method.
	 */
	public void deleteProfile(String name) {
		if(this.profiles.containsKey(name)) {
			FacePamphletProfile profileToRemove = this.profiles.get(name);
			Iterator<String>it = profileToRemove.getFriends();
			while(it.hasNext()) {
				String friendName = it.next();
				FacePamphletProfile friendsProfile = this.profiles.get(friendName);
				friendsProfile.removeFriend(name);
			}
			this.profiles.remove(name);
		}
	}


	/**
	 * This method returns true if there is a profile in the database
	 * that has the given name.  It returns false otherwise.
	 */
	public boolean containsProfile(String name) {
		return this.profiles.containsKey(name);
	}

}
