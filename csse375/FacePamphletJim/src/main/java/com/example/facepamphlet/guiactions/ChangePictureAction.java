package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletProfile;

import acm.util.ErrorException;

public class ChangePictureAction implements ActionListener {

	private FacePamphlet pamphlet;

	public ChangePictureAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (!this.pamphlet.getPicture().getText().equals("")){
			String filename = this.pamphlet.getPicture().getText();
			if(this.pamphlet.getCurrentProfile() != null) {
				FacePamphletProfile profile = this.pamphlet.getProfileInfo().getProfile(
						this.pamphlet.getCurrentProfile().getName());
				try {
					profile.setImage(filename);
					this.pamphlet.getCanvas().displayProfile(profile);
				} catch (ErrorException ex) {
					this.pamphlet.getCanvas().showMessage("Unable to open image file: " + filename);
				}

			}
			else{
				this.pamphlet.println("Please select a profile to change picture");
			}
		}

	}

}
