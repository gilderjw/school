package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletProfile;

public class ChangeStatusAction implements ActionListener {

	private FacePamphlet pamphlet;

	public ChangeStatusAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {

		if (!this.pamphlet.getStatus().getText().equals("")){
			String statusMessage = this.pamphlet.getStatus().getText();
			if(this.pamphlet.getCurrentProfile() != null) {

				FacePamphletProfile profile = this.pamphlet.getProfileInfo().getProfile(this.pamphlet.getCurrentProfile().getName());
				profile.setStatus(profile.getName() + " is " + statusMessage, this.pamphlet.getAttachment());
				this.pamphlet.getCanvas().displayProfile(profile);
				this.pamphlet.getCanvas().showMessage("Status updated to " + statusMessage);
			}
			else{
				this.pamphlet.getCanvas().showMessage("Please select a profile to change status");
			}
		}
	}

}
