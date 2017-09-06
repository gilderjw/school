package com.example.facepamphlet;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Queue;

import com.google.common.collect.EvictingQueue;

/**
 * This a new class to replace the String representation of a status.
 * Using this, we can now support comments on specific posts
 * @author Jim Gildersleeve
 *
 */
public class FacePamphletStatus implements Serializable {
	private static final long serialVersionUID = -9167737521782910254L;
	private String statusText;
	private Queue<FacePamphletComment> comments;
	private Date timeOfPost;

	/**
	 * Constructor for FacePamphletStatus
	 * @param statusText text content of the status
	 */
	public FacePamphletStatus(String statusText) {
		this.timeOfPost = Calendar.getInstance().getTime();
		this.comments = EvictingQueue.create(10); //10 comments was chosen arbitrarily
		this.statusText = statusText;
	}

	/**
	 * @return text content of the status
	 */
	public String getStatusText() {
		return this.statusText;
	}

	/**
	 * @return a collection of comments for this status
	 */
	public Iterator<FacePamphletComment> getComments(){
		return this.comments.iterator();
	}

	/**
	 * adds the given comment to this status
	 * @param comment comment object to add to the status
	 */
	public void addComment(FacePamphletComment comment) {
		this.comments.add(comment);
	}

	/**
	 * @return The time that the comment was made in the form mm/dd/yy 12:00 [AM|PM]
	 */
	public String getDateText(){
		return DateFormat.getInstance().format(this.timeOfPost);
	}

	/**
	 * This function collects all of the information from FacePamphletStatus in a
	 * way that we want to render.
	 * @param f status that we want to get string to render for
	 * @return String with the status timestamp, contents, and comments
	 */
	@Override
	public String toString(){
		String status = "<html>" + this.getDateText() + ": " + this.getStatusText();
		Iterator<FacePamphletComment> iter = this.getComments();
		while(iter.hasNext()) {
			FacePamphletComment c = iter.next();
			status += "<br>&#9" + c.getUserName() + ": " + c.getCommentText();
		}
		return status + "</html>";
	}
}
