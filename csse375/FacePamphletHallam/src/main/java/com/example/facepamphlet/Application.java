package com.example.facepamphlet;

import com.example.facepamphlet.model.Education;
import com.example.facepamphlet.model.Profile;
import com.example.facepamphlet.model.Workplace;

import acm.graphics.GImage;

/**
 * Added this class to move logic of the program away from updating UI of the
 * program
 *
 */
public class Application {

	private ApplicationFrame applicationFrame;

	public Application(ApplicationFrame applicationFrame) {
		this.applicationFrame = applicationFrame;
	}

	public void createProfile(String name) {
		if (name.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!Database.getInstance().containsProfile(name)) {
			Profile profile = new Profile(name);
			Database.getInstance().addProfile(profile);
			applicationFrame.getProfileCanvas().displayProfile(profile);
			applicationFrame.getProfileCanvas().showMessage("New profile created");
		} else {
			Profile profile = Database.getInstance().getProfile(name);
			applicationFrame.getProfileCanvas().displayProfile(profile);
			applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " already exists.");
		}
	}

	public void deleteProfile(String name) {
		if (name.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (Database.getInstance().containsProfile(name)) {
			Database.getInstance().deleteProfile(name);
			applicationFrame.getProfileCanvas().removeAll();
			applicationFrame.getProfileCanvas().showMessage("Profile of " + name + " deleted");
		} else {
			applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " does not exist.");
		}
	}

	public void lookupProfile(String name) {
		if (name.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (Database.getInstance().containsProfile(name)) {
			Profile profile = Database.getInstance().getProfile(name);
			applicationFrame.getProfileCanvas().displayProfile(profile);
			applicationFrame.getProfileCanvas().showMessage("Displaying " + name);
		} else {
			applicationFrame.getProfileCanvas().showMessage("A profile with name " + name + " does not exist.");
		}
	}

	public void changeStatus(Profile profile, String status) {
		if (status.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (profile == null) {
			applicationFrame.getProfileCanvas().showMessage("Please select a profile to change status");
			return;
		}

		profile.setStatus(profile.getName() + " is " + status);
		applicationFrame.getProfileCanvas().displayProfile(profile);
		applicationFrame.getProfileCanvas().showMessage("Status updated to " + status);
	}

	public void changePicture(Profile profile, String path) {
		if (path.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (profile == null) {
			applicationFrame.getProfileCanvas().showMessage("Please select a profile to change picture");
			return;
		}

		try {
			GImage image = new GImage(path);
			profile.setImage(image);
			applicationFrame.getProfileCanvas().displayProfile(profile);
			applicationFrame.getProfileCanvas().showMessage("Picture updated");
		} catch (Exception e) {
			applicationFrame.getProfileCanvas().showMessage("Unable to open image file: " + path);
		}
	}

	public void addFriend(Profile profile, String friendName) {
		if (friendName.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (profile.getName().equals(friendName)) {
			applicationFrame.getProfileCanvas().showMessage("You cannot friend yourself");
			return;
		}

		if (!Database.getInstance().containsProfile(friendName)) {
			applicationFrame.getProfileCanvas().showMessage(friendName + " does not exist.");
			return;
		}

		Profile friendProfile = Database.getInstance().getProfile(friendName);

		if (profile.addFriend(friendName)) {
			friendProfile.addFriend(profile.getName());
			applicationFrame.getProfileCanvas().displayProfile(profile);
			applicationFrame.getProfileCanvas().showMessage(friendName + " added as a friend.");
		} else {
			applicationFrame.getProfileCanvas()
					.showMessage(profile.getName() + " already has " + friendName + " as a friend.");
		}
	}

	public void addSchool(String name) {
		if (name.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("SchoolCanvas");

		if (Database.getInstance().addSchool(name)) {
			applicationFrame.getSchoolCanvas().displaySchool(name);
			applicationFrame.getSchoolCanvas().showMessage("New school added.");
		} else {
			applicationFrame.getSchoolCanvas().displaySchool(name);
			applicationFrame.getSchoolCanvas().showMessage(name + " already exists.");
		}
	}

	public void addWorkplace(String name) {
		if (name.isEmpty())
			return;

		applicationFrame.setCurrentCanvas("WorkplaceCanvas");

		if (Database.getInstance().addWorkplace(name)) {
			applicationFrame.getWorkplaceCanvas().displayWorkplace(name);
			applicationFrame.getWorkplaceCanvas().showMessage("New workplace added.");
		} else {
			applicationFrame.getWorkplaceCanvas().displayWorkplace(name);
			applicationFrame.getWorkplaceCanvas().showMessage(name + " already exists.");
		}
	}

	public void setNormalMode() {
		applicationFrame.setCurrentCanvas("ProfileCanvas");
		applicationFrame.getProfileCanvas().displayProfile(applicationFrame.getProfileCanvas().getCurrentProfile());
	}

	public void setAdminMode() {
		applicationFrame.setCurrentCanvas("AdminCanvas");
		applicationFrame.getAdminCanvas().showFriendMapping();
	}

	public void addEducation(Profile profile, String name, String graduationDate) {
		if (name.isEmpty() || graduationDate.isEmpty() || profile == null)
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!Database.getInstance().schoolExists(name)) {
			applicationFrame.getProfileCanvas().showMessage("School " + name + " does not exist");
			return;
		}

		profile.addEducation(name, new Education(name, graduationDate));
		applicationFrame.getProfileCanvas().displayProfile(profile);
	}

	public void addWorkplace(Profile profile, String name, String startDate, String endDate) {
		if (name.isEmpty() || startDate.isEmpty() || endDate.isEmpty() || profile == null)
			return;

		applicationFrame.setCurrentCanvas("ProfileCanvas");

		if (!Database.getInstance().workplaceExists(name)) {
			applicationFrame.getProfileCanvas().showMessage("Workplace " + name + " does not exist");
			return;
		}

		profile.addWorkplace(name, new Workplace(name, startDate, endDate));
		applicationFrame.getProfileCanvas().displayProfile(profile);
	}

	public void openEducation(Education education) {
		applicationFrame.setCurrentCanvas("SchoolCanvas");
		applicationFrame.getSchoolCanvas().displaySchool(education.getSchool());
	}

	public void openWorkplace(Workplace workplace) {
		applicationFrame.setCurrentCanvas("WorkplaceCanvas");
		applicationFrame.getWorkplaceCanvas().displayWorkplace(workplace.getName());
	}
}
