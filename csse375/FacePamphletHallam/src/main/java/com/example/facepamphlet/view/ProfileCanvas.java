package com.example.facepamphlet.view;

import acm.graphics.*;

import static com.example.facepamphlet.Constants.*;

import java.awt.*;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.*;

import javax.swing.DefaultListModel;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;

import com.example.facepamphlet.Application;
import com.example.facepamphlet.model.Education;
import com.example.facepamphlet.model.Profile;
import com.example.facepamphlet.model.Workplace;

public class ProfileCanvas extends MyCanvas {

	private static final long serialVersionUID = 6254073509803596796L;
	/* Private instance variables */
	double nameHeight = 0;

	private Profile currentProfile;

	private Application application;

	public ProfileCanvas(Application application) {
		this.application = application;
	}

	/**
	 * This method displays the given profile on the canvas. The canvas is first
	 * cleared of all existing items (including messages displayed near the
	 * bottom of the screen) and then the given profile is displayed. The
	 * profile display includes the name of the user from the profile, the
	 * corresponding image (or an indication that an image does not exist), the
	 * status of the user, and a list of the user's friends in the social
	 * network.
	 */
	public void displayProfile(Profile profile) {
		currentProfile = profile;

		removeAll();
		addName(profile.getName());
		addImage(profile.getImage());
		addStatus(profile.getStatus());
		addPastStatuses(profile.getPastStatuses());
		addFriends(profile.getFriends());
		addEducation(profile.getEducations());
		addWork(profile.getWorkplaces());
	}

	private void addName(String name) {
		GLabel Name = new GLabel(name);
		Name.setFont(PROFILE_NAME_FONT);
		Name.setColor(Color.BLUE);
		double x = LEFT_MARGIN;
		this.nameHeight = Name.getHeight();
		double y = TOP_MARGIN + this.nameHeight;
		add(Name, x, y);
	}

	private void addImage(GImage image) {
		double x = LEFT_MARGIN;
		double y = TOP_MARGIN + this.nameHeight + IMAGE_MARGIN;
		if (image != null) {
			image.setBounds(x, y, IMAGE_WIDTH, IMAGE_HEIGHT);
			add(image);
		} else {
			GRect imageRect = new GRect(x, y, IMAGE_WIDTH, IMAGE_HEIGHT);
			add(imageRect);
			GLabel noImage = new GLabel("No Image");
			noImage.setFont(PROFILE_IMAGE_FONT);
			double labelWidth = x + IMAGE_WIDTH / 2 - noImage.getWidth() / 2;
			double labelHeight = y + IMAGE_HEIGHT / 2;
			add(noImage, labelWidth, labelHeight);
		}
	}

	private double statusHeight = 0;
	private double maxStatusWidth = 0;

	private void addStatus(String status) {
		GLabel Status = new GLabel(status);
		Status.setFont(PROFILE_STATUS_FONT);
		double x = LEFT_MARGIN;

		// hate to assign this here only to read it from the member in the next
		// line,
		// but I need it for height positioning of the list
		this.statusHeight = Status.getHeight();
		this.maxStatusWidth = Math.max(Status.getWidth(), maxStatusWidth);
		double y = getStatusMargin();
		if (getElementAt(x, y) != null) {
			remove(getElementAt(x, y));
		}
		add(Status, x, y);
	}

	private double getStatusMargin() {
		return TOP_MARGIN + this.nameHeight + IMAGE_MARGIN + IMAGE_HEIGHT + STATUS_MARGIN + this.statusHeight;
	}

	private void addPastStatuses(Queue<String> pastStatuses) {

		// I can't use this directly with a collection? Wow. Let's never use
		// swing.
		DefaultListModel<String> model = new DefaultListModel<String>();
		for (String status : pastStatuses) {
			// need to reverse the list to be intuitive
			model.add(0, status);
		}
		JList<String> pastStatusesList = new JList<String>(model);
		pastStatusesList.setLayoutOrientation(JList.VERTICAL);
		pastStatusesList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		JScrollPane pane = new JScrollPane(pastStatusesList);
		pane.setSize(600, 300);
		add(pane, LEFT_MARGIN, getStatusMargin() + 10);
		validate();
	}

	private void addFriends(Iterator<String> friends) {
		GLabel Friends = new GLabel("Friends:");
		Friends.setFont(PROFILE_FRIEND_LABEL_FONT);
		double x = getWidth() / 2;
		double y = TOP_MARGIN + this.nameHeight;
		add(Friends, x, y);
		Iterator<String> it = friends;
		for (int i = 1; it.hasNext(); i++) {
			GLabel friendName = new GLabel(it.next());
			friendName.setFont(PROFILE_FRIEND_FONT);
			double height = y + Friends.getHeight() * i;
			add(friendName, x, height);
		}
	}

	private void addEducation(Collection<Education> educations) {
		GLabel Friends = new GLabel("Education:");
		Friends.setFont(PROFILE_FRIEND_LABEL_FONT);
		double x = getWidth() / 2 + 250;
		double y = TOP_MARGIN + this.nameHeight;
		add(Friends, x, y);
		Iterator<Education> it = educations.iterator();
		for (int i = 1; it.hasNext(); i++) {
			Education education = it.next();
			GLabel schoolName = new GLabel(education.getSchool() + ", Graduated " + education.getGraduation());
			schoolName.addMouseListener(new MouseListener() {
				@Override
				public void mouseReleased(MouseEvent e) {
				}

				@Override
				public void mousePressed(MouseEvent e) {
				}

				@Override
				public void mouseExited(MouseEvent e) {
				}

				@Override
				public void mouseEntered(MouseEvent e) {
				}

				@Override
				public void mouseClicked(MouseEvent e) {
					application.openEducation(education);
				}
			});
			schoolName.setFont(PROFILE_FRIEND_FONT);
			schoolName.setColor(Color.BLUE);
			double height = y + Friends.getHeight() * i;
			add(schoolName, x, height);
		}
	}

	private void addWork(Collection<Workplace> workplaces) {
		GLabel Friends = new GLabel("Work:");
		Friends.setFont(PROFILE_FRIEND_LABEL_FONT);
		double x = getWidth() / 2 + 250;
		double y = TOP_MARGIN + this.nameHeight + 300;
		add(Friends, x, y);
		Iterator<Workplace> it = workplaces.iterator();
		for (int i = 1; it.hasNext(); i++) {
			Workplace workplace = it.next();
			GLabel workplaceName = new GLabel(
					workplace.getName() + ", From " + workplace.getStartDate() + " to " + workplace.getEndDate());
			workplaceName.addMouseListener(new MouseListener() {
				@Override
				public void mouseReleased(MouseEvent e) {
				}

				@Override
				public void mousePressed(MouseEvent e) {
				}

				@Override
				public void mouseExited(MouseEvent e) {
				}

				@Override
				public void mouseEntered(MouseEvent e) {
				}

				@Override
				public void mouseClicked(MouseEvent e) {
					application.openWorkplace(workplace);
				}
			});
			workplaceName.setFont(PROFILE_FRIEND_FONT);
			workplaceName.setColor(Color.BLUE);
			double height = y + Friends.getHeight() * i;
			add(workplaceName, x, height);
		}
	}

	public Profile getCurrentProfile() {
		return currentProfile;
	}
}
