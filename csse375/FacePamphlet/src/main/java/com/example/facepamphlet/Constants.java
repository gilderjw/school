package com.example.facepamphlet;
/*
 * File: Constants.java
 * --------------------------------
 * This file declares several constants that are shared by the
 * different modules in the FacePamphlet application.  Any class
 * that implements this interface can use these constants.
 */

//NOTE: I refactored out everything that was not being used in more than one class by moving it to their corresponding class

public class Constants {



	/** Name of font used to display the name in a user's profile */
	public static final String PROFILE_NAME_FONT = "Dialog-24";


	/**
	 * Name of font used to display the label "Friends" above the user's list of
	 * friends in a profile
	 */
	public static final String PROFILE_FRIEND_LABEL_FONT = "Dialog-16-bold";

	/**
	 * Name of font used to display the names from the user's list of friends in
	 * a profile
	 */
	public static final String PROFILE_FRIEND_FONT = "Dialog-16";

	/**
	 * The number of pixels in the hortizontal margin between the left side of
	 * the canvas display area and the Name, Image, and Status components that
	 * are display in the profile
	 */
	public static final double LEFT_MARGIN = 20;

	/**
	 * The number of pixels in the vertical margin between the top of the canvas
	 * display area and the top (NOT the baseline) of the Name component that is
	 * displayed in the profile
	 */
	public static final double TOP_MARGIN = 20;



}
