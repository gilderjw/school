package com.example.facepamphlet;
/*
 * File: FacePamphlet.java
 * -----------------------
 * When it is finished, this program will implement a basic social network
 * management system.
 */

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.HashMap;

import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JTextField;

import com.example.facepamphlet.guiactions.AddFriendAction;
import com.example.facepamphlet.guiactions.AddProfileAction;
import com.example.facepamphlet.guiactions.AttachmentAction;
import com.example.facepamphlet.guiactions.ChangeColorAction;
import com.example.facepamphlet.guiactions.ChangeFontAction;
import com.example.facepamphlet.guiactions.ChangePictureAction;
import com.example.facepamphlet.guiactions.ChangeStatusAction;
import com.example.facepamphlet.guiactions.CommentAction;
import com.example.facepamphlet.guiactions.DeleteProfileAction;
import com.example.facepamphlet.guiactions.LookupProfileAction;
import java.awt.Color;

import acm.program.Program;

public class FacePamphlet extends Program  {

	/*
	 * These constants were taken from FacePamphletConstants
	 */

	/** The width of the application window */
	public static final int APPLICATION_WIDTH = 800;

	/** The height of the application window */
	public static final int APPLICATION_HEIGHT = 500;

	/** Number of characters for each of the text input fields */
	public static final int TEXT_FIELD_SIZE = 15;

	/** Text to be used to create an "empty" label to put space
	 *  between interactors on EAST border of application.  Note this
	 *  label is not actually the empty string, but rather a single space */
	public static final String EMPTY_LABEL_TEXT = " ";

	private static final long serialVersionUID = 133276188638963785L;

	/* Private instance variables*/
	//text fields
	private JTextField name;
	private JTextField status;
	private JTextField picture;
	private JTextField friend;
	private JTextField attachmentLocation;
	private JButton attachmentBtn;
	private JComboBox fontname;
	private JComboBox colornames;
	JTextField content;
	private String[] fontSelection = {"Arial", "Times New Roman", "Verdana", "Courier", "Serif", "MonoSpaced", "Wingdings", "Comic Sans MS"};
	private String[] colorSelection = {"Black", "Red", "Blue", "Green", "White"};
	private boolean hasAttachment = false;
	//private Color[] colorSelection = {Color.BLACK, Color.RED, Color.BLUE,Color.GREEN,Color.WHITE};
	//creates a new database and a new canvas
	private FacePamphletDatabase profileInfo = new FacePamphletDatabase();
	private FacePamphletCanvas canvas = new FacePamphletCanvas();
	private String currentAttachment;
	//keeps track of the current profile
	private FacePamphletProfile currentProfile = null;
	private HashMap<String, Color> colorHash;
	
	/**
	 * This method has the responsibility for initializing the
	 * interactors in the application, and taking care of any other
	 * initialization that needs to be performed.
	 */
	@Override
	public void init() {
		/*
		 * this method was split up into a bunch of functions.
		 */
		this.createColorHashmap();
		this.initDB();

		this.addNameInterface();
		this.addFontInterface();
		this.addColorInterface();
		this.addStatusInterface();
		this.add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		this.addPictureInterface();
		this.add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		this.addFriendInterface();
		this.add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		this.addCommentInterface();
		this.add(new JLabel(EMPTY_LABEL_TEXT), WEST); //space holder
		this.addAttachmentInterface();
		//Action listeners
		this.addActionListeners();
		this.status.addActionListener(this);
		this.picture.addActionListener(this);
		this.friend.addActionListener(this);

		this.add(this.canvas);
	}


	private void createColorHashmap() {
		colorHash = new HashMap<String, Color>();
		colorHash.put("Black", Color.BLACK);
		colorHash.put("Blue", Color.BLUE);
		colorHash.put("Red", Color.RED);
		colorHash.put("Green", Color.GREEN);
		colorHash.put("White", Color.WHITE);
	}

	@Override
	public void stop() {
		this.saveDB();
	}

	/**
	 * This function sets the current profile for the program.
	 * @param profile profile to focus on
	 */
	public void setCurrentProfile(FacePamphletProfile profile) {
		this.currentProfile = profile;
	}

	/**
	 * Loads the database file in the ./target directory
	 * Serialization was chosen over a text representation so that
	 * this method does not have to be modified with every change to
	 * data classes
	 */
	public void initDB() {
		try {
			InputStream file = new FileInputStream("database");
			InputStream buf = new BufferedInputStream(file);
			ObjectInput objInput = new ObjectInputStream(buf);

			this.profileInfo = (FacePamphletDatabase) objInput.readObject();

			objInput.close();
		} catch (IOException e) {
			System.out.println("No database file detected, starting with empty database...");
		} catch (ClassNotFoundException e) {
			System.out.println("Database file does not represent a FacePamphletDatabase, starting with empty database...");
		}

	}

	/**
	 * Saves the database file in the ./target directory
	 * Serialization was chosen over a text representation so that
	 * this method does not have to be modified with every change to
	 * data classes
	 */
	public void saveDB() {
		try {
			OutputStream file = new FileOutputStream("database");
			OutputStream buf = new BufferedOutputStream(file);
			ObjectOutput output = new ObjectOutputStream(buf);

			output.writeObject(this.profileInfo);

			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/*
	 * The following methods were made to break up the init function
	 * and utilize the new classes in the guiaction package
	 */
	public void addFriendInterface(){
		this.friend = new JTextField(TEXT_FIELD_SIZE);
		this.friend.addActionListener(new AddFriendAction(this));
		this.add(this.friend, WEST);

		JButton friendButton = new JButton("Add Friend");
		friendButton.addActionListener(new AddFriendAction(this));
		this.add(friendButton, WEST);
	}

	public void addPictureInterface(){
		//fields on the West Side of the screen
		this.picture = new JTextField(TEXT_FIELD_SIZE);
		this.picture.addActionListener(new ChangePictureAction(this));
		this.add(this.picture, WEST);

		JButton picBtn = new JButton("Change Picture");
		picBtn.addActionListener(new ChangePictureAction(this));
		this.add(picBtn, WEST);
	}

	public void addStatusInterface(){
		//fields on the West Side of the screen
		this.status = new JTextField(TEXT_FIELD_SIZE);
		this.status.addActionListener(new ChangeStatusAction(this));
		this.add(this.status, WEST);
		JButton statusButton = new JButton("Change Status");
		statusButton.addActionListener(new ChangeStatusAction(this));
		this.add(statusButton, WEST);
	}

	public void addNameInterface() {
		//fields on the North Side of the screen
		this.add(new JLabel("Name "), NORTH);

		this.name = new JTextField(TEXT_FIELD_SIZE);
		this.add(this.name, NORTH);

		JButton addBtn = new JButton("Add");
		addBtn.addActionListener(new AddProfileAction(this));
		this.add(addBtn, NORTH);

		JButton DeleteBtn = new JButton("Delete");
		DeleteBtn.addActionListener(new DeleteProfileAction(this));
		this.add(DeleteBtn, NORTH);

		JButton LookupButton = new JButton("Lookup");
		LookupButton.addActionListener(new LookupProfileAction(this));
		this.add(LookupButton, NORTH);
	}
	
	public void addFontInterface() {
		this.add(new JLabel("Font Name "), NORTH);
		
		this.fontname = new JComboBox(fontSelection);
		this.add(this.fontname, NORTH);
		
		JButton fontBtn = new JButton("Change Font");
		fontBtn.addActionListener(new ChangeFontAction(this));
		this.add(fontBtn, NORTH);
	}
	
	public void addColorInterface() {
		this.add(new JLabel("Color "), NORTH);
		
		this.colornames = new JComboBox(colorSelection);
		this.add(this.colornames, NORTH);
		
		JButton colorBtn = new JButton("Change Color");
		colorBtn.addActionListener(new ChangeColorAction(this));
		this.add(colorBtn, NORTH);
	}


	public void addCommentInterface(){
		this.content = new JTextField(TEXT_FIELD_SIZE);
		this.content.addActionListener(new CommentAction(this));

		JButton cmtbtn = new JButton("Comment");

		cmtbtn.addActionListener(new CommentAction(this));

		this.add(this.content, WEST);
		this.add(cmtbtn, WEST);
	}
	
	private void addAttachmentInterface() {
		this.attachmentLocation = new JTextField(TEXT_FIELD_SIZE);
		this.attachmentLocation.addActionListener(new AttachmentAction(this));

		attachmentBtn = new JButton("Add Attachment");

		attachmentBtn.addActionListener(new AttachmentAction(this));

		this.add(this.attachmentLocation, WEST);
		this.add(attachmentBtn, WEST);
	}


	/*
	 * actionPerformed was replaced with all of the classes in the guiactions package
	 * it was a big switch statement and tried to do too much
	 */

	public String getUserName() {
		return this.name.getText();
	}

	public void setName(JTextField name) {
		this.name = name;
	}
	
	public String getFontName() {
		return (String) this.fontname.getSelectedItem();
	}

	public JTextField getStatus() {
		return this.status;
	}

	public void setStatus(JTextField status) {
		this.status = status;
	}

	public JTextField getPicture() {
		return this.picture;
	}

	public void setPicture(JTextField picture) {
		this.picture = picture;
	}

	public JTextField getFriend() {
		return this.friend;
	}

	public void setFriend(JTextField friend) {
		this.friend = friend;
	}

	public FacePamphletDatabase getProfileInfo() {
		return this.profileInfo;
	}

	public void setProfileInfo(FacePamphletDatabase profileInfo) {
		this.profileInfo = profileInfo;
	}

	public FacePamphletCanvas getCanvas() {
		return this.canvas;
	}

	public void setCanvas(FacePamphletCanvas canvas) {
		this.canvas = canvas;
	}

	public FacePamphletProfile getCurrentProfile() {
		return this.currentProfile;
	}

	public JTextField getContent() {
		return this.content;
	}

	public void setContent(JTextField content) {
		this.content = content;
	}

	public Color getColor() {
		return colorHash.get(this.colornames.getSelectedItem());
	}
	
	public String getAttachmentLoc(){
		return this.attachmentLocation.getText();
	}
	
	public boolean hasAttachment(){
		return this.hasAttachment;
	}
	
	public void setAttachment(String attachment){
		this.hasAttachment = true;
		this.currentAttachment = attachment;
		this.attachmentBtn.setText("Remove Attachment");
	}
	
	public void removeAttachment(){
		this.hasAttachment = false;
		this.currentAttachment = "";
		this.attachmentBtn.setText("Add Attachment");
	}
	
	public String getAttachment(){
		return this.currentAttachment;
	}
	
	
}
