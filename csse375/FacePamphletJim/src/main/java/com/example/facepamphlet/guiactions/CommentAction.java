package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletComment;
import com.example.facepamphlet.FacePamphletProfile;

public class CommentAction implements ActionListener {

	private FacePamphlet pamphlet;

	public CommentAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		FacePamphletProfile commenter = this.pamphlet.getProfileInfo().getProfile(this.pamphlet.getUserName());
		FacePamphletComment cmt = new FacePamphletComment(commenter, this.pamphlet.getContent().getText());
		this.pamphlet.getCanvas().getSelectedStatus().addComment(cmt);
		this.pamphlet.getCanvas().displayProfile(this.pamphlet.getCurrentProfile());
	}
}
