package com.example.facepamphlet;

import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import com.example.facepamphlet.model.Education;
import com.example.facepamphlet.model.Profile;
import com.example.facepamphlet.model.Workplace;

/**
 * Added this class to move logic of the program away from updating UI of the
 * program
 *
 */
public class Application {

	private ApplicationFrame applicationFrame;

	private Profile loggedIn;

	public Application(ApplicationFrame applicationFrame) {
		this.applicationFrame = applicationFrame;
	}

	public void createProfile(String name) {
		if (name.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!DatabaseSingleton.getInstance().containsProfile(name)) {
			Profile profile = new Profile(name, "password");
			DatabaseSingleton.getInstance().addProfile(profile);
			this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
			this.applicationFrame.getProfileCanvas().showMessage("New profile created");
		} else {
			Profile profile = DatabaseSingleton.getInstance().getProfile(name);
			this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
			this.applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " already exists.");
		}
	}

	public void deleteProfile(String name) {
		if (name.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (DatabaseSingleton.getInstance().containsProfile(name)) {
			DatabaseSingleton.getInstance().deleteProfile(name);
			this.applicationFrame.getProfileCanvas().removeAll();
			this.applicationFrame.getProfileCanvas().showMessage("Profile of " + name + " deleted");
		} else {
			this.applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " does not exist.");
		}
	}

	public void lookupProfile(String name) {
		if (name.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (DatabaseSingleton.getInstance().containsProfile(name)) {
			Profile profile = DatabaseSingleton.getInstance().getProfile(name);
			this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
			this.applicationFrame.getProfileCanvas().showMessage("Displaying " + name);
		} else {
			this.applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " does not exist.");
		}
	}

	public void changeStatus(Profile profile, String status, boolean priv) {
		if (profile == null) {
			this.applicationFrame.getProfileCanvas().showMessage("Please select a profile to change status");
			return;
		}

		if (this.loggedIn.getName() != profile.getName()) {
			this.applicationFrame.getProfileCanvas().showMessage("You are not logged in as that user");
			return;
		}

		if (status.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");



		profile.setStatus(profile.getName() + " is " + status, priv);
		this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
		this.applicationFrame.getProfileCanvas().showMessage("Status updated to " + status);
	}

	public void changePicture(Profile profile, String path) {
		if (path.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (profile == null) {
			this.applicationFrame.getProfileCanvas().showMessage("Please select a profile to change picture");
			return;
		}


		if (this.loggedIn.getName() != profile.getName()) {
			this.applicationFrame.getProfileCanvas().showMessage("You are not logged in as that user");
			return;
		}


		try {
			profile.setImage(path);
			this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
			this.applicationFrame.getProfileCanvas().showMessage("Picture updated");
		} catch (Exception e) {
			this.applicationFrame.getProfileCanvas().showMessage("Unable to open image file: " + path);
		}
	}

	public void login() {
		JTextField user = new JTextField();
		JPasswordField pass = new JPasswordField();
		Object[] message = {
				"Username:", user,
				"Password:", pass
		};

		JOptionPane.showConfirmDialog(null, message, "login",  JOptionPane.OK_CANCEL_OPTION);

		String username = user.getText();
		String password = String.valueOf(pass.getPassword());

		if (DatabaseSingleton.getInstance().getProfile(username) == null) {
			DatabaseSingleton.getInstance().addProfile(new Profile(username, password));
		} else {
			if (!DatabaseSingleton.getInstance().getProfile(username).checkPassword(password)) {
				this.login();
			}
		}
		this.loggedIn = DatabaseSingleton.getInstance().getProfile(username);
		this.lookupProfile(username);
	}

	public void addFriend(Profile profile, String friendName) {
		if (friendName.isEmpty()) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (profile.getName().equals(friendName)) {
			this.applicationFrame.getProfileCanvas().showMessage("You cannot friend yourself");
			return;
		}

		if (!DatabaseSingleton.getInstance().containsProfile(friendName)) {
			this.applicationFrame.getProfileCanvas().showMessage(friendName + " does not exist.");
			return;
		}

		if (this.loggedIn.getName() != profile.getName()) {
			this.applicationFrame.getProfileCanvas().showMessage("You are not logged in as that user");
			return;
		}

		Profile friendProfile = DatabaseSingleton.getInstance().getProfile(friendName);

		if (profile.addFriend(friendName)) {
			friendProfile.addFriend(profile.getName());
			this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
			this.applicationFrame.getProfileCanvas().showMessage(friendName + " added as a friend.");
		} else {
			this.applicationFrame.getProfileCanvas()
			.showMessage(profile.getName() + " already has " + friendName + " as a friend.");
		}
	}

	public void addSchool(String name) {
		if (name.isEmpty()) {
			return;
		}

		if (this.loggedIn.getName() != name) {
			this.applicationFrame.getProfileCanvas().showMessage("You are not logged in as that user");
			return;
		}

		this.applicationFrame.setCurrentCanvas("SchoolCanvas");

		if (DatabaseSingleton.getInstance().addSchool(name)) {
			this.applicationFrame.getSchoolCanvas().displaySchool(name);
			this.applicationFrame.getSchoolCanvas().showMessage("New school added.");
		} else {
			this.applicationFrame.getSchoolCanvas().displaySchool(name);
			this.applicationFrame.getSchoolCanvas().showMessage(name + " already exists.");
		}
	}

	public void addWorkplace(String name) {
		if (name.isEmpty()) {
			return;
		}

		if (this.loggedIn.getName() != name) {
			this.applicationFrame.getProfileCanvas().showMessage("You are not logged in as that user");
			return;
		}

		this.applicationFrame.setCurrentCanvas("WorkplaceCanvas");

		if (DatabaseSingleton.getInstance().addWorkplace(name)) {
			this.applicationFrame.getWorkplaceCanvas().displayWorkplace(name);
			this.applicationFrame.getWorkplaceCanvas().showMessage("New workplace added.");
		} else {
			this.applicationFrame.getWorkplaceCanvas().displayWorkplace(name);
			this.applicationFrame.getWorkplaceCanvas().showMessage(name + " already exists.");
		}
	}

	public void setNormalMode() {
		this.applicationFrame.setCurrentCanvas("ProfileCanvas");
		this.applicationFrame.getProfileCanvas().displayProfile(this.applicationFrame.getProfileCanvas().getCurrentProfile(), this.loggedIn);
	}

	public void setAdminMode() {
		this.applicationFrame.setCurrentCanvas("AdminCanvas");
		this.applicationFrame.getAdminCanvas().showFriendMapping();
	}

	public void addEducation(Profile profile, String name, String graduationDate) {
		if (name.isEmpty() || graduationDate.isEmpty() || (profile == null)) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!DatabaseSingleton.getInstance().schoolExists(name)) {
			this.applicationFrame.getProfileCanvas().showMessage("School " + name + " does not exist");
			return;
		}

		profile.addEducation(name, new Education(name, graduationDate));
		this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
	}

	public void addWorkplace(Profile profile, String name, String startDate, String endDate) {
		if (name.isEmpty() || startDate.isEmpty() || endDate.isEmpty() || (profile == null)) {
			return;
		}

		this.applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!DatabaseSingleton.getInstance().workplaceExists(name)) {
			this.applicationFrame.getProfileCanvas().showMessage("Workplace " + name + " does not exist");
			return;
		}

		profile.addWorkplace(name, new Workplace(name, startDate, endDate));
		this.applicationFrame.getProfileCanvas().displayProfile(profile, this.loggedIn);
	}

	public void openEducation(Education education) {
		this.applicationFrame.setCurrentCanvas("SchoolCanvas");
		this.applicationFrame.getSchoolCanvas().displaySchool(education.getSchool());
	}

	public void openWorkplace(Workplace workplace) {
		this.applicationFrame.setCurrentCanvas("WorkplaceCanvas");
		this.applicationFrame.getWorkplaceCanvas().displayWorkplace(workplace.getName());
	}
}
