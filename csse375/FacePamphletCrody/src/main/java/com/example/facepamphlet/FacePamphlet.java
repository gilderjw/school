package com.example.facepamphlet;
/* 
 * File: FacePamphlet.java
 * -----------------------
 * When it is finished, this program will implement a basic social network
 * management system.
 */

import static com.example.facepamphlet.FacePamphletConstants.*;

import acm.program.*;
import acm.graphics.*;
import acm.util.*;
import java.awt.event.*;
import javax.swing.*;

public class FacePamphlet extends Program  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 133276188638963785L;
	
	/* Private instance variables*/
	//text fields
	private JTextField name;
	private JTextField status;
	private JTextField picture;
	private JTextField friend;
	/*ADDED
	 * added these fields to add the employment and education functionality
	 * 
	 * IMPORTANT
	 * when you run this the pamphlet will already have users in the database (Jess, Jill, Jim)
	 * it does not display any starting profile because the text is all mushed together
	 * if I auto displayed one. just look up one of the profiles. Also the Admin mode
	 * button will display all of the info.
	 */
	private JTextField employment;
	private JTextField education;
	private JTextField employmentDate;
	private JTextField educationDate;
	
	/*ADDED
	 * Here is a boolean to track if we are in admin mode
	 */
	private boolean inAdminMode = false;
	
	//creates a new database and a new canvas
	private FacePamphletDatabase profileInfo = new FacePamphletDatabase();
	private FacePamphletCanvas canvas = new FacePamphletCanvas();
	
	//keeps track of the current profile
	private FacePamphletProfile currentProfile = null;
	
	
	/**
	 * This method has the responsibility for initializing the 
	 * interactors in the application, and taking care of any other 
	 * initialization that needs to be performed.
	 */
	@Override
	public void init() {
		
		//fields on the North Side of the screen
		add(new JLabel("Name "), NORTH); 
		
		this.name = new JTextField(TEXT_FIELD_SIZE);
		add(this.name, NORTH);
		
		add(new JButton("Add"), NORTH);
		
		add(new JButton("Delete"), NORTH);
		
		add(new JButton("Lookup"), NORTH);
		
		//fields on the West Side of the screen
		this.status = new JTextField(TEXT_FIELD_SIZE);
		add(this.status, WEST);
		
		add(new JButton("Change Status"), WEST);
		
		add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		
		this.picture = new JTextField(TEXT_FIELD_SIZE);
		add(this.picture, WEST);
		
		add(new JButton("Change Picture"), WEST);
		
		add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		
		this.friend = new JTextField(TEXT_FIELD_SIZE);
		add(this.friend, WEST);
		
		add(new JButton("Add Friend"), WEST);
		
		/*ADDED
		 * Adding a listener for the new functionality (work, education, and admin power)
		 */
		add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		
		add(new JLabel("Place of Employment"), WEST);
		this.employment = new JTextField(TEXT_FIELD_SIZE);
		add(this.employment, WEST);
		add(new JLabel("Date of Employment"), WEST);
		this.employmentDate = new JTextField(TEXT_FIELD_SIZE);
		add(this.employmentDate, WEST);
		
		add(new JButton("Add work place"), WEST);
		
		add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		
		add(new JLabel("Place of Education"), WEST);
		this.education = new JTextField(TEXT_FIELD_SIZE);
		add(this.education, WEST);
		add(new JLabel("Date of Graduation"), WEST);
		this.educationDate = new JTextField(TEXT_FIELD_SIZE);
		add(this.educationDate, WEST);
		
		add(new JButton("Add Education"), WEST);
		
		add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		
		add(new JButton("Toggle Admin Mode"), WEST);
		
		//Action listeners
		addActionListeners();
		this.status.addActionListener(this);
		this.picture.addActionListener(this);
		this.friend.addActionListener(this);
		this.education.addActionListener(this);
		this.employment.addActionListener(this);
		this.educationDate.addActionListener(this);
		this.employmentDate.addActionListener(this);
		
		add(this.canvas);
    }
	
    /**
     * This class is responsible for detecting when the buttons are
     * clicked or interactors are used, so you will have to add code
     * to respond to these actions.
     */
	
    @Override
	public void actionPerformed(ActionEvent e) {
    	String enteredName = this.name.getText();
    	
    	//Add button is clicked
    	if(e.getActionCommand().equals("Add") && !this.name.getText().equals("")) {
    		this.addProfile(enteredName);
    	}
    	
    	//Delete button is clicked
    	else if (e.getActionCommand().equals("Delete") && !this.name.getText().equals("")){
    		this.delete(enteredName);
    	}
    	
    	//Lookup button is clicked
    	else if (e.getActionCommand().equals("Lookup") && !this.name.getText().equals("")){
    		this.lookUp(enteredName);
    	}
    	
    	//Change Status is clicked or user clicked enter after entering a status in the text field
    	else if (e.getActionCommand().equals("Change Status") || e.getSource() == this.status && !this.status.getText().equals("")){
    		this.changeStatus();
    	}
    	
    	//Change Picture is clicked or user clicked enter after entering picture name into the text field
    	else if (e.getActionCommand().equals("Change Picture") || e.getSource() == this.picture && !this.picture.getText().equals("")){
    		if(this.currentProfile != null) {
    			this.changePicture();
    		}
    		else{
    			println("Please select a profile to change picture");
    		}
    	}
    	
    	//Add Friend is clicked or user clicked enter after entering a friends name into the text field
    	else if (e.getActionCommand().equals("Add Friend") || e.getSource() == this.friend && !this.friend.getText().equals("")){
    		this.addFriend(enteredName);
    	}
    	
    	/*
    	 * here I am calling my new methods for the new buttons
    	 */
    	else if (e.getActionCommand().equals("Add work place")){
    		this.addWorkPlace();
    	}
    	
    	else if (e.getActionCommand().equals("Add Education")){
    		this.addEducation();
    	}
    	
    	else if (e.getActionCommand().equals("Toggle Admin Mode")){
    		this.toggleAdmin();
    	}
    }
	
	/* REFACTORED
	 * The following methods are used in the statement above
	 * I refactored this because it was a major eye sore and hard to find the method 
	 * I wanted to.
	 */
	public void lookUp(String enteredName){
		this.canvas.removeAll(); //clears everything off the canvas
		//if the entered name exists in the database, displays the profile
		if(this.profileInfo.containsProfile(enteredName) == true) {
			FacePamphletProfile profile = this.profileInfo.getProfile(enteredName);
			this.canvas.displayProfile(profile);
			this.canvas.showMessage("Displaying " + enteredName);
			this.currentProfile = profile;
		}
		//if the entered name does not exists, tells the user it doesn't exist
		//and sets current profile to null
		else{
			this.canvas.showMessage("A profile with name " + enteredName + " does not exist.");
			this.currentProfile = null;
		}
	}
	
	public void delete(String enteredName){
		//clears the canvas and sets the current profile to null
		this.canvas.removeAll();
		this.currentProfile = null;
		//if the entered name exists as a profile, the profile is deleted
		if(this.profileInfo.containsProfile(enteredName) == true) {
			this.profileInfo.deleteProfile(enteredName);
			this.canvas.showMessage("Profile of " + enteredName + " deleted");
		}
		//if the entered name is not an actual profile, tells the user 
		//that the profile does not exist
		else{
			this.canvas.showMessage("A profile with name " + enteredName + " does not exist.");
		}
	}
	
	public void addProfile(String enteredName){
		//if the entered name does not exist in the database, a profile is created
		if(this.profileInfo.containsProfile(enteredName) == false) {
			FacePamphletProfile profile = new FacePamphletProfile(enteredName);
			this.profileInfo.addProfile(profile);
			this.canvas.displayProfile(profile);
			this.canvas.showMessage("New profile created");
			this.currentProfile = profile;
		}
		//if the entered name is already an existing profile, displays the profile
		//and tells the user that the profile already exists
		else{
			FacePamphletProfile profile = this.profileInfo.getProfile(enteredName);
			this.canvas.displayProfile(profile);
			this.canvas.showMessage("A profile with name " + enteredName + " already exists.");
			this.currentProfile = profile;
		}
	}
	
	public void changeStatus(){
		String statusMessage = this.status.getText();
		if(this.currentProfile != null) {
			FacePamphletProfile profile = this.profileInfo.getProfile(this.currentProfile.getName());
			profile.setStatus(profile.getName() + " is " + statusMessage);
			this.canvas.displayProfile(profile);
			this.canvas.showMessage("Status updated to " + statusMessage);
		}
		else{
			this.canvas.showMessage("Please select a profile to change status");
		}
	}
	
	public void changePicture(){
		String filename = this.picture.getText();
		FacePamphletProfile profile = this.profileInfo.getProfile(this.currentProfile.getName());
		GImage image = null;
		try {
			image = new GImage(filename);
			profile.setImage(image);
		} catch (ErrorException ex) {
			image = null;
		}
		this.canvas.displayProfile(profile);
		if(image == null) {
			this.canvas.showMessage("Unable to open image file: " + filename);
		}
		else{
			this.canvas.showMessage("Picture updated");
		}
	}
	
	public void addFriend(String enteredName){
		String friendName = this.friend.getText();
		//checks to see if there is a current profile
		if(this.currentProfile != null) {
			FacePamphletProfile profile = this.profileInfo.getProfile(this.currentProfile.getName());
			//checks to see if the name entered is the users name. The user can't friend him/herself. 
			if(profile.getName().equals(friendName)) {
				this.canvas.showMessage("You cannot friend yourself");
			}
			//checks to see if the friend exists in the database
			else if(this.profileInfo.containsProfile(friendName)) {
				FacePamphletProfile friendProfile = this.profileInfo.getProfile(friendName);
				//checks to see if the user is already friends with the friend name entered
				
				//if the user and the friend entered are not friends, makes them friends
				if(profile.addFriend(friendName) == true) {
					profile.addFriend(friendName);
					friendProfile.addFriend(enteredName);
					this.canvas.displayProfile(profile);
					this.canvas.showMessage(friendName + " added as a friend.");
				}
				//if the user is already friends with the friend name entered, displays this message
				else {
					this.canvas.showMessage(profile.getName() + " already has " + friendName + " as a friend.");
				}
			}
			//if the friend does not exist in the database, displays this message
			else{
				this.canvas.showMessage(friendName + " does not exist.");
			}
		}	
		//if there is not current profile, asks user to select a profile
		else{
			this.canvas.showMessage("Please select a profile to add friend");
		}
	}
	
	/*
	 * These are the new methods to handle the new functionality
	 */
	public void addWorkPlace(){
		if(this.currentProfile != null){
			FacePamphletProfile profile = this.profileInfo.getProfile(this.currentProfile.getName());
			if(!this.employment.getText().equals("") && !this.employmentDate.getText().equals("")){
				profile.addWorkPlace(this.employment.getText());
				profile.addWorkDate(this.employmentDate.getText());
				this.canvas.displayProfile(profile);
			} else {
				this.canvas.showMessage("please fill out both the date and location fields");
			}
		} else {
			this.canvas.showMessage("please select a profile to add a work place");
		}
	}
	
	public void addEducation(){
		if(this.currentProfile != null){
			FacePamphletProfile profile = this.profileInfo.getProfile(this.currentProfile.getName());
			if(!this.education.getText().equals("") && !this.educationDate.getText().equals("")){
				profile.addEducationPlace(this.education.getText());
				profile.addEducationDate(this.educationDate.getText());
				this.canvas.displayProfile(profile);
			} else {
				this.canvas.showMessage("please fill out both the date and location fields");
			}
		} else {
			this.canvas.showMessage("please select a profile to add a work place");
		}
	}
	
	public void toggleAdmin(){
		if(this.inAdminMode){
			this.inAdminMode = false;
			this.canvas.removeAll();
			this.canvas.displayProfile(this.currentProfile);
		} else {
			this.inAdminMode = true;
			this.canvas.removeAll();
			this.canvas.displayAdminPane(this.profileInfo);
		}
	}
	
}
  

