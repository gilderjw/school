package com.example.facepamphlet;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * This is a new class to represent a comment on FacePamphletStatus
 * @author Jim Gildersleeve
 *
 */
public class FacePamphletComment implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 7536537573077795637L;
	private FacePamphletProfile profile;
	private String commentText;
	private Date timeOfPost;
	private String attachment;

	/**
	 * constructor for FacePamphletComment
	 * @param profile profile that made the comment
	 * @param commentText contents of the comment
	 */
	public FacePamphletComment(FacePamphletProfile profile, String commentText, String attachment) {
		if (commentText.length() > 100){
			throw new IllegalArgumentException();
		}
		this.profile = profile;
		this.commentText = commentText;
		this.timeOfPost = Calendar.getInstance().getTime();
		this.attachment = attachment;
	}

	/**
	 * @return the name of the user that posted this comment
	 */
	public String getUserName() {
		return this.profile.getName();
	}

	/**
	 * @return the text content of the comment
	 */
	public String getCommentText(){
		return this.commentText;
	}

	/**
	 * @return The time that the comment was made in the form mm/dd/yy 12:00 [AM|PM]
	 */
	public String getDateText(){
		return DateFormat.getInstance().format(this.timeOfPost);
	}

	public String getAttachment() {
		return this.attachment;
	}
	
	public boolean hasAttachment() {
		return !(this.attachment == null || attachment.equals(""));
	}
}
