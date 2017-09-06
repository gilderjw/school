package com.example.facepamphlet.guiactions;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletProfile;

public class AddFriendAction implements ActionListener{

	private FacePamphlet pamphlet;

	public AddFriendAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		String enteredName = this.pamphlet.getUserName();

		if (!this.pamphlet.getFriend().getText().equals("")){
			String friendName = this.pamphlet.getFriend().getText();
			//checks to see if there is a current profile
			if(this.pamphlet.getCurrentProfile() != null) {
				FacePamphletProfile profile = this.pamphlet.getProfileInfo().getProfile(this.pamphlet.getCurrentProfile().getName());
				//checks to see if the name entered is the users name. The user can't friend him/herself.
				if(profile.getName().equals(friendName)) {
					this.pamphlet.getCanvas().showMessage("You cannot friend yourself");
				}
				//checks to see if the friend exists in the database
				else if(this.pamphlet.getProfileInfo().containsProfile(friendName)) {
					FacePamphletProfile friendProfile = this.pamphlet.getProfileInfo().getProfile(friendName);
					//checks to see if the user is already friends with the friend name entered

					//if the user and the friend entered are not friends, makes them friends
					if(profile.addFriend(friendName) == true) {
						profile.addFriend(friendName);
						friendProfile.addFriend(enteredName);
						this.pamphlet.getCanvas().displayProfile(profile);
						this.pamphlet.getCanvas().showMessage(friendName + " added as a friend.");
					}
					//if the user is already friends with the friend name entered, displays this message
					else {
						this.pamphlet.getCanvas().showMessage(profile.getName() + " already has " + friendName + " as a friend.");
					}
				}
				//if the friend does not exist in the database, displays this message
				else{
					this.pamphlet.getCanvas().showMessage(friendName + " does not exist.");
				}
			}
			//if there is not current profile, asks user to select a profile
			else{
				this.pamphlet.getCanvas().showMessage("Please select a profile to add friend");
			}
		}

	}

}
