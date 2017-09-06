package com.example.facepamphlet.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;

import com.google.common.collect.EvictingQueue;

import acm.graphics.GImage;

public class Profile implements Serializable {

	private static final long serialVersionUID = 4933156444146608105L;
	/* Private instance variables */
	private String Name = "";
	private String Password = null; //added password field
	private String Image = null;
	private boolean statusSet = false;
	private Status currentStatus; //replaced Status string with Status object

	// Evicting queue of size 1000. FIFO built-in.
	private Queue<Status> pastStatuses = EvictingQueue.create(1000);
	private List<String> friends = new ArrayList<String>();
	private Map<String, Education> eduations = new HashMap<>();
	private Map<String, Workplace> workplaces = new HashMap<>();

	/**
	 * Constructor This method takes care of any initialization needed for the
	 * profile.
	 */
	public Profile(String name, String password) {
		this.Name = name;
		this.Password = password;
	}

	/**
	 * This function return whether or not the given password matches the
	 * user's password
	 * @param pass password to check
	 * @return true if the passwords match, false otherwise
	 */
	public boolean checkPassword(String pass) {
		return this.Password.equals(pass);
	}

	/** This method returns the name associated with the profile. */
	public String getName() {
		return this.Name;
	}

	/**
	 * This method returns the image associated with the profile. If there is no
	 * image associated with the profile, the method returns null.
	 */
	public GImage getImage() {
		if (this.Image == null) {
			return null;
		} else {
			return new GImage(this.Image);
		}
	}

	/** This method sets the image associated with the profile. */
	public void setImage(String image) {
		this.Image = image;
	}

	/**
	 * This method returns the status associated with the profile. If there is
	 * no status associated with the profile, the method returns the empty
	 * string ("").
	 */
	public Status getStatus(Profile p) {
		if (this.currentStatus == null) {
			return new Status("", true);
		}
		if(this.friends.contains(p.Name) || !this.currentStatus.friendsOnly || (p == this)) {
			return this.currentStatus;
		} else {
			return new Status("", true);
		}
	}

	/** This method sets the status associated with the profile. */
	public void setStatus(String status, boolean friendsOnly) {
		if (this.statusSet) {
			this.pastStatuses.add(this.currentStatus);
		} else {
			this.statusSet = true;
		}
		this.currentStatus = new Status(status, friendsOnly);
	}

	public Queue<Status> getPastStatuses(Profile p) {
		if (this.friends.contains(p.Name) || (p == this)){
			return this.pastStatuses;
		} else{
			Queue<Status> answer = EvictingQueue.create(1000);
			this.pastStatuses
			.stream()
			.filter((Status s) ->!s.friendsOnly)
			.forEach((s) -> answer.add(s));
			return answer;
		}
	}

	/**
	 * This method adds the named friend to this profile's list of friends. It
	 * returns true if the friend's name was not already in the list of friends
	 * for this profile (and the name is added to the list). The method returns
	 * false if the given friend name was already in the list of friends for
	 * this profile (in which case, the given friend name is not added to the
	 * list of friends a second time.)
	 */
	public boolean addFriend(String friend) {
		if (this.friends.contains(friend)) {
			return false;
		} else {
			this.friends.add(friend);
			return true;
		}
	}

	/**
	 * This method removes the named friend from this profile's list of friends.
	 * It returns true if the friend's name was in the list of friends for this
	 * profile (and the name was removed from the list). The method returns
	 * false if the given friend name was not in the list of friends for this
	 * profile (in which case, the given friend name could not be removed.)
	 */
	public boolean removeFriend(String friend) {
		if (this.friends.contains(friend)) {
			this.friends.remove(this.friends.indexOf(friend));
			return true;
		} else {
			return false;
		}
	}

	/**
	 * This method returns an iterator over the list of friends associated with
	 * the profile.
	 */
	public Iterator<String> getFriends() {
		return this.friends.iterator();
	}

	/**
	 * This method returns a string representation of the profile. This string
	 * is of the form: "name (status): list of friends", where name and status
	 * are set accordingly and the list of friends is a comma separated list of
	 * the names of all of the friends in this profile.
	 *
	 * For example, in a profile with name "Alice" whose status is "coding" and
	 * who has friends Don, Chelsea, and Bob, this method would return the
	 * string: "Alice (coding): Don, Chelsea, Bob"
	 */
	@Override
	public String toString() {
		System.err.println("TOSTRING ON PROFILE WAS USED");
		String profile = this.Name + " (" + this.currentStatus.getContent() + "): ";
		Iterator<String> it = this.friends.iterator();
		while (it.hasNext()) {
			profile += it.next() + ", ";
		}
		return profile;
	}

	public void addEducation(String name, Education education) {
		this.eduations.put(name, education);
	}

	public Collection<Education> getEducations() {
		return this.eduations.values();
	}

	public void addWorkplace(String name, Workplace workplace) {
		this.workplaces.put(name, workplace);
	}

	public Collection<Workplace> getWorkplaces() {
		return this.workplaces.values();
	}
}
