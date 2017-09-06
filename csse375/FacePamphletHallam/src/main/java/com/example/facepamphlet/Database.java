package com.example.facepamphlet;

import java.util.*;

import com.example.facepamphlet.model.Profile;

/**
 * Refactored to be a singleton, added schools and workplaces
 */
public class Database {

	private static Database instance;

	private Map<String, Profile> profiles = new HashMap<String, Profile>();

	private Set<String> schools = new HashSet<>();

	private Set<String> workplaces = new HashSet<>();

	private Database() {
	}

	/**
	 * This method adds the given profile to the database. If the name
	 * associated with the profile is the same as an existing name in the
	 * database, the existing profile is replaced by the new profile passed in.
	 */
	public void addProfile(Profile profile) {
		if (!this.profiles.containsKey(profile.getName())) {
			this.profiles.put(profile.getName(), profile);
		} else {
			this.profiles.remove(profile.getName());
			this.profiles.put(profile.getName(), profile);
		}
	}

	/**
	 * This method returns the profile associated with the given name in the
	 * database. If there is no profile in the database with the given name, the
	 * method returns null.
	 */
	public Profile getProfile(String name) {
		if (this.profiles.containsKey(name)) {
			return this.profiles.get(name);
		} else {
			return null;
		}

	}

	/**
	 * This method removes the profile associated with the given name from the
	 * database. It also updates the list of friends of all other profiles in
	 * the database to make sure that this name is removed from the list of
	 * friends of any other profile.
	 * 
	 * If there is no profile in the database with the given name, then the
	 * database is unchanged after calling this method.
	 */
	public void deleteProfile(String name) {
		if (this.profiles.containsKey(name)) {
			Profile profileToRemove = this.profiles.get(name);
			Iterator<String> it = profileToRemove.getFriends();
			while (it.hasNext()) {
				String friendName = it.next();
				Profile friendsProfile = this.profiles.get(friendName);
				friendsProfile.removeFriend(name);
			}
			this.profiles.remove(name);
		}
	}

	/**
	 * This method returns true if there is a profile in the database that has
	 * the given name. It returns false otherwise.
	 */
	public boolean containsProfile(String name) {
		if (this.profiles.containsKey(name)) {
			return true;
		} else {
			return false;
		}
	}

	public Collection<Profile> getProfiles() {
		return profiles.values();
	}

	public boolean addSchool(String name) {
		return schools.add(name);
	}

	public boolean schoolExists(String name) {
		return schools.contains(name);
	}

	public boolean addWorkplace(String name) {
		return workplaces.add(name);
	}

	public boolean workplaceExists(String name) {
		return workplaces.contains(name);
	}

	public static synchronized Database getInstance() {
		if (instance == null) {
			instance = new Database();
		}
		return instance;
	}
}
