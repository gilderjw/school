package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletProfile;

public class LookupProfileAction implements ActionListener {
	private FacePamphlet pamphlet;

	public LookupProfileAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String enteredName = this.pamphlet.getUserName();
		if (!this.pamphlet.getUserName().equals("")) {
			this.pamphlet.getCanvas().removeAll(); //clears everything off the canvas
			//if the entered name exists in the database, displays the profile
			if(this.pamphlet.getProfileInfo().containsProfile(enteredName) == true) {
				FacePamphletProfile profile = this.pamphlet.getProfileInfo().getProfile(enteredName);
				this.pamphlet.getCanvas().displayProfile(profile);
				this.pamphlet.getCanvas().showMessage("Displaying " + enteredName);
				this.pamphlet.setCurrentProfile(profile);
			}
			//if the entered name does not exists, tells the user it doesn't exist
			//and sets current profile to null
			else{
				this.pamphlet.getCanvas().showMessage("A profile with name " + enteredName + " does not exist.");
				this.pamphlet.setCurrentProfile(null);
			}
		}
	}
}
