package com.example.facepamphlet;

import java.util.HashMap;
import java.util.Map;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JTextField;

import com.example.facepamphlet.view.AdminCanvas;
import com.example.facepamphlet.view.MyCanvas;
import com.example.facepamphlet.view.ProfileCanvas;
import com.example.facepamphlet.view.SchoolCanvas;
import com.example.facepamphlet.view.WorkplaceCanvas;

import acm.program.Program;


/**
 * Refactored: Got rid of the big actionPerformed method and sent most of the
 * logic over to the Application class. This class deals with a lot of UI.
 *
 */
public class ApplicationFrame extends Program {
	/** The width of the application window */
	public static final int APPLICATION_WIDTH = 1600;

	/** The height of the application window */
	public static final int APPLICATION_HEIGHT = 850;

	/** Number of characters for each of the text input fields */
	public static final int TEXT_FIELD_SIZE = 15;

	/**
	 * Text to be used to create an "empty" label to put space between
	 * interactors on EAST border of application. Note this label is not
	 * actually the empty string, but rather a single space
	 */
	public static final String EMPTY_LABEL_TEXT = " ";

	private Application application;

	private Map<String, MyCanvas> canvases;
	private MyCanvas currentCanvas;

	// ---- North Components ----
	private JTextField userInputTextField;

	private JButton addProfileButton;
	private JButton deleteProfileButton;
	private JButton lookupProfileButton;

	private JButton addSchoolButton;

	private JButton addWorkplaceButton;

	// ---- West Components ----
	private JButton setNormalModeButton;
	private JButton setAdminModeButton;

	private JTextField changeStatusTextField;
	private JButton changeStatusButton;
	private JCheckBox friendsOnlyCheckBox;

	private JTextField changePictureTextField;
	private JButton changePictureButton;

	private JTextField addFriendTextField;
	private JButton addFriendButton;

	private JTextField addEducationNameTextField;
	private JTextField addEducationGraduationDateTextField;
	private JButton addEduactionButton;

	private JTextField addWorkplaceNameTextField;
	private JTextField addWorkplaceStartDateTextField;
	private JTextField addWorkplaceEndDateTextField;
	private JButton addProfileWorkplaceButton;

	private static final long serialVersionUID = 133276188638963785L;

	@Override
	public void init() {
		this.setSize(APPLICATION_WIDTH, APPLICATION_HEIGHT);

		this.application = new Application(this);

		this.canvases = new HashMap<>();
		this.canvases.put("ProfileCanvas", new ProfileCanvas(this.application));
		this.canvases.put("AdminCanvas", new AdminCanvas());
		this.canvases.put("SchoolCanvas", new SchoolCanvas());
		this.canvases.put("WorkplaceCanvas", new WorkplaceCanvas());

		SampleDataProvider.addSampleData();
		this.setCurrentCanvas("ProfileCanvas");

		this.currentCanvas = this.canvases.get("ProfileCanvas");

		this.application.login();

		this.initNorthComponents();
		this.addNorthComponents();
		this.addNorthComponentListeners();

		this.initWestComponents();
		this.addWestComponents();
		this.addWestComponentListeners();
	}

	@Override
	public void stop() {
		DatabaseSingleton.saveDB();
	}



	private void initNorthComponents() {
		this.userInputTextField = new JTextField(TEXT_FIELD_SIZE);

		this.addProfileButton = new JButton("Add Profile");
		this.deleteProfileButton = new JButton("Delete Profile");
		this.lookupProfileButton = new JButton("Lookup Profile");

		this.addSchoolButton = new JButton("Add School");

		this.addWorkplaceButton = new JButton("Add Workplace");
	}

	private void addNorthComponents() {
		this.addComponents(NORTH, this.userInputTextField, this.addProfileButton, this.deleteProfileButton, this.lookupProfileButton,
				this.addSchoolButton, this.addWorkplaceButton);
	}

	private void addNorthComponentListeners() {
		this.addProfileButton.addActionListener((event) -> {
			this.application.createProfile(this.userInputTextField.getText());
		});

		this.deleteProfileButton.addActionListener((event) -> {
			this.application.deleteProfile(this.userInputTextField.getText());
		});

		this.lookupProfileButton.addActionListener((event) -> {
			this.application.lookupProfile(this.userInputTextField.getText());
		});

		this.addSchoolButton.addActionListener((event) -> {
			this.application.addSchool(this.userInputTextField.getText());
		});

		this.addWorkplaceButton.addActionListener((event) -> {
			this.application.addWorkplace(this.userInputTextField.getText());
		});
	}

	private void initWestComponents() {
		this.setNormalModeButton = new JButton("Set Normal Mode");
		this.setAdminModeButton = new JButton("Set Admin Mode");

		this.changeStatusTextField = new JTextField(TEXT_FIELD_SIZE);
		this.changeStatusButton = new JButton("Change Status");
		this.friendsOnlyCheckBox = new JCheckBox();

		this.changePictureTextField = new JTextField(TEXT_FIELD_SIZE);
		this.changePictureButton = new JButton("Change Picture");

		this.addFriendTextField = new JTextField(TEXT_FIELD_SIZE);
		this.addFriendButton = new JButton("Add Friend");

		this.addEducationNameTextField = new JTextField("School Name", TEXT_FIELD_SIZE);
		this.addEducationGraduationDateTextField = new JTextField("Graduation Date", TEXT_FIELD_SIZE);
		this.addEduactionButton = new JButton("Add School Graduation");

		this.addWorkplaceNameTextField = new JTextField("Workplace Name", TEXT_FIELD_SIZE);
		this.addWorkplaceStartDateTextField = new JTextField("Start Date",TEXT_FIELD_SIZE);
		this.addWorkplaceEndDateTextField = new JTextField("End Date", TEXT_FIELD_SIZE);
		this.addProfileWorkplaceButton = new JButton("Add Occupation");
	}

	private void addWestComponents() {
		this.addComponents(WEST, this.setNormalModeButton, this.setAdminModeButton, this.getSpaceHolder(), this.changeStatusTextField,
				this.changeStatusButton, this.friendsOnlyCheckBox, this.getSpaceHolder(), this.changePictureTextField, this.changePictureButton, this.getSpaceHolder(),
				this.addFriendTextField, this.addFriendButton, this.getSpaceHolder(), this.addEducationNameTextField,
				this.addEducationGraduationDateTextField, this.addEduactionButton, this.getSpaceHolder(), this.addWorkplaceNameTextField,
				this.addWorkplaceStartDateTextField, this.addWorkplaceEndDateTextField, this.addProfileWorkplaceButton);
	}

	private void addWestComponentListeners() {
		this.setNormalModeButton.addActionListener((event) -> {
			this.application.setNormalMode();
		});

		this.setAdminModeButton.addActionListener((event) -> {
			this.application.setAdminMode();
		});

		this.changeStatusButton.addActionListener((event) -> {
			this.application.changeStatus(this.getProfileCanvas().getCurrentProfile(),
					this.changeStatusTextField.getText(),
					this.friendsOnlyCheckBox.isSelected());
		});

		this.changePictureButton.addActionListener((event) -> {
			this.application.changePicture(this.getProfileCanvas().getCurrentProfile(), this.changePictureTextField.getText());
		});

		this.addFriendButton.addActionListener((event) -> {
			this.application.addFriend(this.getProfileCanvas().getCurrentProfile(), this.addFriendTextField.getText());
		});

		this.addEduactionButton.addActionListener((event) -> {
			this.application.addEducation(this.getProfileCanvas().getCurrentProfile(), this.addEducationNameTextField.getText(),
					this.addEducationGraduationDateTextField.getText());
		});

		this.addProfileWorkplaceButton.addActionListener((event) -> {
			this.application.addWorkplace(this.getProfileCanvas().getCurrentProfile(), this.addWorkplaceNameTextField.getText(),
					this.addWorkplaceStartDateTextField.getText(), this.addWorkplaceEndDateTextField.getText());
		});
	}

	private void addComponents(String direction, JComponent... components) {
		for (JComponent component : components) {
			this.add(component, direction);
		}
	}

	private JComponent getSpaceHolder() {
		return new JLabel(EMPTY_LABEL_TEXT);
	}

	public ProfileCanvas getProfileCanvas() {
		return (ProfileCanvas) this.canvases.get("ProfileCanvas");
	}

	public AdminCanvas getAdminCanvas() {
		return (AdminCanvas) this.canvases.get("AdminCanvas");
	}

	public SchoolCanvas getSchoolCanvas() {
		return (SchoolCanvas) this.canvases.get("SchoolCanvas");
	}

	public WorkplaceCanvas getWorkplaceCanvas() {
		return (WorkplaceCanvas) this.canvases.get("WorkplaceCanvas");
	}

	public void setCurrentCanvas(String canvasName) {
		this.removeAll();
		this.validate();
		this.currentCanvas = this.canvases.get(canvasName);
		this.add(this.currentCanvas);
		this.validate();
	}
}
