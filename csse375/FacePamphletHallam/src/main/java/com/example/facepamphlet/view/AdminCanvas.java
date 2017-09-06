package com.example.facepamphlet.view;

import static com.example.facepamphlet.Constants.LEFT_MARGIN;

import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;

import com.example.facepamphlet.Database;
import com.example.facepamphlet.model.Profile;

public class AdminCanvas extends MyCanvas {

	private JScrollPane friendsPane;

	private static final long serialVersionUID = 1L;

	public void showFriendMapping() {
		if (friendsPane != null)
			remove(friendsPane);

		DefaultListModel<String> model = new DefaultListModel<String>();

		for (Profile profile : Database.getInstance().getProfiles()) {
			model.addElement(profile.getName() + " is Friends with:");
			profile.getFriends().forEachRemaining(friend -> model.addElement("-> " + friend));
			model.addElement(" ");
		}

		JList<String> friendsList = new JList<String>(model);
		friendsList.setLayoutOrientation(JList.VERTICAL);
		friendsList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		friendsPane = new JScrollPane(friendsList);
		friendsPane.setSize(800, 600);
		add(friendsPane, LEFT_MARGIN, 10);
		validate();
	}
}
