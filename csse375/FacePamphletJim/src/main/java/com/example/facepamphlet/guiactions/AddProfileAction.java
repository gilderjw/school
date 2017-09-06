package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletProfile;

public class AddProfileAction implements ActionListener {

	private FacePamphlet pamphlet;

	public AddProfileAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {

		String enteredName = this.pamphlet.getUserName();

		//Add button is clicked
		if(!this.pamphlet.getUserName().equals("")) {
			//if the entered name does not exist in the database, a profile is created
			if(this.pamphlet.getProfileInfo().containsProfile(enteredName) == false) {
				FacePamphletProfile profile = new FacePamphletProfile(enteredName);
				this.pamphlet.getProfileInfo().addProfile(profile);
				this.pamphlet.getCanvas().displayProfile(profile);
				this.pamphlet.getCanvas().showMessage("New profile created");
				this.pamphlet.setCurrentProfile(profile);
			}
			//if the entered name is already an existing profile, displays the profile
			//and tells the user that the profile already exists
			else{
				FacePamphletProfile profile = this.pamphlet.getProfileInfo().getProfile(enteredName);
				this.pamphlet.getCanvas().displayProfile(profile);
				this.pamphlet.getCanvas().showMessage("A profile with name " + enteredName + " already exists.");
				this.pamphlet.setCurrentProfile(profile);
			}
		}
	}


}
