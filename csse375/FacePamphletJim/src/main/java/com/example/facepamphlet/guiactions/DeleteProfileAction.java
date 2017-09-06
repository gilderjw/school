package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;

public class DeleteProfileAction implements ActionListener {

	private FacePamphlet pamphlet;

	public DeleteProfileAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String enteredName = this.pamphlet.getUserName();

		if (!this.pamphlet.getUserName().equals("")){
			//clears the canvas and sets the current profile to null
			this.pamphlet.getCanvas().removeAll();
			this.pamphlet.setCurrentProfile(null);
			//if the entered name exists as a profile, the profile is deleted
			if(this.pamphlet.getProfileInfo().containsProfile(enteredName) == true) {
				this.pamphlet.getProfileInfo().deleteProfile(enteredName);
				this.pamphlet.getCanvas().showMessage("Profile of " + enteredName + " deleted");
			}
			//if the entered name is not an actual profile, tells the user
			//that the profile does not exist
			else{
				this.pamphlet.getCanvas().showMessage("A profile with name " + enteredName + " does not exist.");
			}
		}
	}

}
