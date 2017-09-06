package com.example.facepamphlet.view;

import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;

import com.example.facepamphlet.Constants;
import com.example.facepamphlet.DatabaseSingleton;
import com.example.facepamphlet.model.Profile;

public class AdminCanvas extends MyCanvas {

	private JScrollPane friendsPane;

	private static final long serialVersionUID = 1L;

	public void showFriendMapping() {
		if (this.friendsPane != null) {
			this.remove(this.friendsPane);
		}

		DefaultListModel<String> model = new DefaultListModel<String>();

		for (Profile profile : DatabaseSingleton.getInstance().getProfiles()) {
			model.addElement(profile.getName() + " is Friends with:");
			profile.getFriends().forEachRemaining(friend -> model.addElement("-> " + friend));
			model.addElement(" ");
		}

		JList<String> friendsList = new JList<String>(model);
		friendsList.setLayoutOrientation(JList.VERTICAL);
		friendsList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		this.friendsPane = new JScrollPane(friendsList);
		this.friendsPane.setSize(800, 600);
		this.add(this.friendsPane, Constants.LEFT_MARGIN, 10);
		this.validate();
	}
}
