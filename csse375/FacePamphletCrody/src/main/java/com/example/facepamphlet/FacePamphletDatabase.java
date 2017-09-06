package com.example.facepamphlet;
/*
 * File: FacePamphletDatabase.java
 * -------------------------------
 * This class keeps track of the profiles of all users in the
 * FacePamphlet application.  Note that profile names are case
 * sensitive, so that "ALICE" and "alice" are NOT the same name.
 */

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.*;

public class FacePamphletDatabase {
	
	/* private instance variables */
	private Map<String, FacePamphletProfile> profiles = new HashMap<String, FacePamphletProfile>();
	
	/* ADDED
	 * fields to help with automatically loading an example.
	 */
	private InputStream in = FacePamphletDatabase.class.getResourceAsStream("preload");
	private BufferedReader reader = new BufferedReader(new InputStreamReader(in));
	
	/* ADDED
	 * Added all the logic in the constructor. I know it is not easily expanded
	 * but I was just using it to easily test.
	 */
	/** 
	 * Constructor
	 * This method takes care of any initialization needed for 
	 * the database.
	 * @throws IOException 
	 */
	public FacePamphletDatabase() {
		for(int i = 0; i < 3; i++){
			String profileName;
			try {
				profileName = this.reader.readLine();
				this.addProfile(new FacePamphletProfile(profileName));
				for(int j = 0; j < 3; j++){
					this.getProfile(profileName).addFriend(this.reader.readLine());
				}
				for(int j = 0; j < 3; j++){
					this.getProfile(profileName).addEducationPlace(this.reader.readLine());
				}
				for(int j = 0; j < 3; j++){
					this.getProfile(profileName).addEducationDate(this.reader.readLine());
				}
				for(int j = 0; j < 3; j++){
					this.getProfile(profileName).addWorkPlace(this.reader.readLine());
				}
				for(int j = 0; j < 3; j++){
					this.getProfile(profileName).addWorkDate(this.reader.readLine());
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	/*
	 * This will allow me to access this to preload the data
	 */
	
	
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
	
	public Set<String> getKeySet(){
		return this.profiles.keySet();
	}

	
	/** 
	 * This method returns the profile associated with the given name 
	 * in the database.  If there is no profile in the database with 
	 * the given name, the method returns null.
	 */
	public FacePamphletProfile getProfile(String name) {
		if(this.profiles.containsKey(name)) {
			return this.profiles.get(name);
		}
		else{
			return null;
		}
		
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
		if(this.profiles.containsKey(name)) {
			return true;
		}
		else {
			return false;
		}
	}

}
