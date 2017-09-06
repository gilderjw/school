package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletComment;
import com.example.facepamphlet.FacePamphletProfile;

public class AttachmentAction implements ActionListener {

	private FacePamphlet pamphlet;

	public AttachmentAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		this.pamphlet.getCanvas().showMessage("");
		if (this.pamphlet.hasAttachment()) {
			this.pamphlet.removeAttachment();
			this.pamphlet.getCanvas().showMessage("Attachment has been removed");
			
		} else {
			this.pamphlet.setAttachment(this.pamphlet.getAttachmentLoc());
			this.pamphlet.getCanvas().showMessage("Attachment has been added");
		}
	}
}