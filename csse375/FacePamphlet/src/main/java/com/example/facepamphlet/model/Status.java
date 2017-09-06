package com.example.facepamphlet.model;

import java.io.Serializable;

public class Status implements Serializable {

	private static final long serialVersionUID = -1747439850865614166L;

	String content;
	boolean friendsOnly;

	public Status(String content, boolean friendsOnly) {
		this.content = content;
		this.friendsOnly = friendsOnly;
	}

	public String getContent() {
		return this.content;
	}

	public boolean FriendsOnly() {
		return this.friendsOnly;
	}
}

