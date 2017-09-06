package com.example.facepamphlet;
/*
 * File: FacePamphletCanvas.java
 * -----------------------------
 * This class represents the canvas on which the profiles in the social
 * network are displayed.  NOTE: This class does NOT need to update the
 * display when the window is resized.
 */

import java.awt.Color;
import java.awt.Font;
import java.awt.Image;
import java.util.ArrayList;
//import java.awt.Image.*;
import java.util.Iterator;
import java.util.Queue;

import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JList;
import javax.swing.JScrollPane;
import javax.swing.JTextPane;
import javax.swing.ListSelectionModel;

import acm.graphics.GCanvas;
import acm.graphics.GImage;
import acm.graphics.GLabel;
import acm.graphics.GRect;

public class FacePamphletCanvas extends GCanvas {

	/*
	 * These constants were migrated from FacePamphletConstants.java to remove the lazy class
	 */

	/** Name of font used to display the application message at the
	 *  bottom of the display canvas */
	//public static final String MESSAGE_FONT = "Dialog-18";
	
	/** Name of font used to display the name in a user's profile */
	//public static final String PROFILE_NAME_FONT = "Dialog-24";

	/** Name of font used to display the text "No Image" in user
	 *  profiles that do not contain an actual image */
	//public static final String PROFILE_IMAGE_FONT = "Dialog-24";

	/** Name of font used to display the status in a user's profile */
	//public static final String PROFILE_STATUS_FONT = "Dialog-16-bold";

	/** Name of font used to display the label "Friends" above the
	 *  user's list of friends in a profile */
	//public static final String PROFILE_FRIEND_LABEL_FONT = "Dialog-16-bold";

	/** Name of font used to display the names from the user's list
	 *  of friends in a profile */
	//public static final String PROFILE_FRIEND_FONT = "Dialog-16";

	/** The width (in pixels) that profile images should be displayed */
	public static final double IMAGE_WIDTH = 200;

	/** The height (in pixels) that profile images should be displayed */
	public static final double IMAGE_HEIGHT = 200;

	/** The number of pixels in the vertical margin between the bottom
	 *  of the canvas display area and the baseline for the message
	 *  text that appears near the bottom of the display */
	public static final double BOTTOM_MESSAGE_MARGIN = 20;

	/** The number of pixels in the hortizontal margin between the
	 *  left side of the canvas display area and the Name, Image, and
	 *  Status components that are display in the profile */
	public static final double LEFT_MARGIN = 20;

	/** The number of pixels in the vertical margin between the top
	 *  of the canvas display area and the top (NOT the baseline) of
	 *  the Name component that is displayed in the profile */
	public static final double TOP_MARGIN = 20;

	/** The number of pixels in the vertical margin between the
	 *  baseline of the Name component and the top of the Image
	 *  displayed in the profile */
	public static final double IMAGE_MARGIN = 20;

	/** The number of vertical pixels in the vertical margin between
	 *  the bottom of the Image and the top of the Status component
	 *  in the profile */
	public static final double STATUS_MARGIN = 20;

	private static final long serialVersionUID = 6254073509803596796L;

	
	/* Private instance variables*/
	double nameHeight = 0;
	double lastX = 0;
	double lastY = 0;
	Font MESSAGE_FONT;
	Font PROFILE_NAME_FONT;
	Font PROFILE_IMAGE_FONT;
	Font PROFILE_STATUS_FONT;
	Font PROFILE_FRIEND_LABEL_FONT;
	Font PROFILE_FRIEND_FONT;
	Color TEXT_COLOR;
	
	public FacePamphletCanvas() {
		this.MESSAGE_FONT = new Font("Courier", Font.PLAIN, 18);
		this.PROFILE_NAME_FONT = new Font("Courier", Font.PLAIN, 24);
		this.PROFILE_IMAGE_FONT = new Font("Courier", Font.PLAIN, 24);
		this.PROFILE_STATUS_FONT = new Font("Courier", Font.BOLD, 16);
		this.PROFILE_FRIEND_LABEL_FONT = new Font("Courier", Font.BOLD, 16);
		this.PROFILE_FRIEND_FONT = new Font("Courier", Font.PLAIN, 16);
		this.TEXT_COLOR = Color.black;
	}
	
	public void changeFont(String fontName){
		this.MESSAGE_FONT = new Font(fontName, Font.PLAIN, 18);
		this.PROFILE_NAME_FONT = new Font(fontName, Font.PLAIN, 24);
		this.PROFILE_IMAGE_FONT = new Font(fontName, Font.PLAIN, 24);
		this.PROFILE_STATUS_FONT = new Font(fontName, Font.BOLD, 16);
		this.PROFILE_FRIEND_LABEL_FONT = new Font(fontName, Font.BOLD, 16);
		this.PROFILE_FRIEND_FONT = new Font(fontName, Font.PLAIN, 16);
	}
	
	public void changeColor(Color c){
		this.TEXT_COLOR = c;
	}
	
	private JList<FacePamphletStatus> pastStatusesList; //used to find out which status is selected

	/**
	 * This method displays a message string near the bottom of the
	 * canvas.  Every time this method is called, the previously
	 * displayed message (if any) is replaced by the new message text
	 * passed in.
	 */
	public void showMessage(String msg) {
		GLabel message = new GLabel(msg);
		double x = (this.getWidth()/2) - ((message.getWidth()*3)/4);
		double y = this.getHeight() - BOTTOM_MESSAGE_MARGIN;
		if(this.getElementAt(this.lastX, this.lastY) != null) {
			this.remove(this.getElementAt(this.lastX, this.lastY));
		}
		this.lastX = x;
		this.lastY = y;
		message.setFont(MESSAGE_FONT);
		message.setColor(TEXT_COLOR);
		this.add(message, x, y);
	}


	/**
	 * This method displays the given profile on the canvas.  The
	 * canvas is first cleared of all existing items (including
	 * messages displayed near the bottom of the screen) and then the
	 * given profile is displayed.  The profile display includes the
	 * name of the user from the profile, the corresponding image
	 * (or an indication that an image does not exist), the status of
	 * the user, and a list of the user's friends in the social network.
	 */
	public void displayProfile(FacePamphletProfile profile) {
		this.removeAll();
		this.addName(profile.getName());
		this.addImage(profile.getImage());
		this.addStatus(profile.getStatus());
		this.addPastStatuses(profile.getPastStatuses());
		this.addFriends(profile.getFriends());
	}

	private void addName(String name) {
		GLabel Name = new GLabel(name);
		Name.setFont(PROFILE_NAME_FONT);
		Name.setColor(Color.BLUE);
		double x = LEFT_MARGIN;
		this.nameHeight = Name.getHeight();
		double y = TOP_MARGIN + this.nameHeight;
		this.add(Name, x, y);
	}

	private void addImage(GImage image) {
		double x = LEFT_MARGIN;
		double y = TOP_MARGIN + this.nameHeight + IMAGE_MARGIN;
		if(image != null) {
			image.setBounds(x, y, IMAGE_WIDTH, IMAGE_HEIGHT);
			this.add(image);
		}
		else {
			GRect imageRect = new GRect(x, y, IMAGE_WIDTH, IMAGE_HEIGHT);
			this.add(imageRect);
			GLabel noImage = new GLabel("No Image");
			noImage.setFont(PROFILE_IMAGE_FONT);
			noImage.setColor(TEXT_COLOR);
			double labelWidth = (x + (IMAGE_WIDTH/2)) - (noImage.getWidth()/2);
			double labelHeight = y + (IMAGE_HEIGHT/2);
			this.add(noImage, labelWidth, labelHeight);
		}
	}

	private double statusHeight = 0;
	private double maxStatusWidth = 0;

	private void addStatus(FacePamphletStatus status) {
		
		JTextPane Status = new JTextPane();
		Status.setText(status.getDateText() + ": " + status.getStatusText() + " ");
		if (status.hasAttachment()){
			ImageIcon icon = new ImageIcon(status.getAttachment());
			ImageIcon reSizedIcon = resizeImage(icon);
			Status.insertIcon(reSizedIcon);
		}
		Status.setFont(PROFILE_STATUS_FONT);
		//Status.setColor(TEXT_COLOR);
		Status.setForeground(TEXT_COLOR);
		double x = LEFT_MARGIN;

		// hate to assign this here only to read it from the member in the next line,
		// but I need it for height positioning of the list
		this.statusHeight =  Status.getHeight();
		this.maxStatusWidth = Math.max(Status.getWidth(), this.maxStatusWidth);
		double y = this.getStatusMargin();
		if(this.getElementAt(x, y) != null) {
			this.remove(this.getElementAt(x, y));
		}
		this.add(Status, x, y);
	}

	private ImageIcon resizeImage(ImageIcon icon) {
		Image image = icon.getImage();
		Image newimg = image.getScaledInstance(30, 30, java.awt.Image.SCALE_SMOOTH);
		return new ImageIcon(newimg);
	}

	public FacePamphletStatus getSelectedStatus() {
		return this.pastStatusesList.getSelectedValue();
	}


	private double getStatusMargin(){
		return TOP_MARGIN + this.nameHeight + IMAGE_MARGIN + IMAGE_HEIGHT + STATUS_MARGIN + this.statusHeight;
	}

	private void addPastStatuses(Queue<FacePamphletStatus> pastStatuses){

		// I can't use this directly with a collection?  Wow.  Let's never use swing.
		DefaultListModel<FacePamphletStatus> model = new DefaultListModel<FacePamphletStatus>();
		//ArrayList<String> attachments = new ArrayList<>();
		for( FacePamphletStatus status : pastStatuses ){
			// need to reverse the list to be intuitive
			model.add(0, status);
		}
		this.pastStatusesList = new JList<FacePamphletStatus>(model);
		this.pastStatusesList.setLayoutOrientation(JList.VERTICAL);
		this.pastStatusesList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

		
		//JTextPane pane = new JTextPane();
	
		JScrollPane pane = new JScrollPane(this.pastStatusesList);
		pane.setSize(800, 300);
		pane.setFont(PROFILE_FRIEND_FONT);
		pane.setForeground(TEXT_COLOR);
		this.add( pane, LEFT_MARGIN, this.getStatusMargin() + 50 );
		this.validate();
	}

	private void addFriends(Iterator<String>friends) {
		GLabel Friends = new GLabel("Friends:");
		Friends.setFont(PROFILE_FRIEND_LABEL_FONT);
		Friends.setColor(TEXT_COLOR);
		double x = this.getWidth()/2;
		double y = TOP_MARGIN + this.nameHeight;
		this.add(Friends, x, y);
		Iterator<String> it = friends;
		for(int i = 1; it.hasNext(); i++) {
			GLabel friendName = new GLabel(it.next());
			friendName.setFont(PROFILE_FRIEND_FONT);
			friendName.setColor(TEXT_COLOR);
			double height = y + (Friends.getHeight() * i);
			this.add(friendName, x, height);
		}
	}

}
