package com.example.facepamphlet;

import static com.example.facepamphlet.Constants.APPLICATION_HEIGHT;
import static com.example.facepamphlet.Constants.APPLICATION_WIDTH;
import static com.example.facepamphlet.Constants.EMPTY_LABEL_TEXT;
import static com.example.facepamphlet.Constants.TEXT_FIELD_SIZE;

import java.util.HashMap;
import java.util.Map;

import javax.swing.JButton;
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
		setSize(APPLICATION_WIDTH, APPLICATION_HEIGHT);

		application = new Application(this);

		canvases = new HashMap<>();
		canvases.put("ProfileCanvas", new ProfileCanvas(application));
		canvases.put("AdminCanvas", new AdminCanvas());
		canvases.put("SchoolCanvas", new SchoolCanvas());
		canvases.put("WorkplaceCanvas", new WorkplaceCanvas());

		initNorthComponents();
		addNorthComponents();
		addNorthComponentListeners();

		initWestComponents();
		addWestComponents();
		addWestComponentListeners();

		currentCanvas = canvases.get("ProfileCanvas");
		setCurrentCanvas("ProfileCanvas");

		SampleDataProvider.addSampleData();
	}

	private void initNorthComponents() {
		userInputTextField = new JTextField(TEXT_FIELD_SIZE);

		addProfileButton = new JButton("Add Profile");
		deleteProfileButton = new JButton("Delete Profile");
		lookupProfileButton = new JButton("Lookup Profile");

		addSchoolButton = new JButton("Add School");

		addWorkplaceButton = new JButton("Add Workplace");
	}

	private void addNorthComponents() {
		addComponents(NORTH, userInputTextField, addProfileButton, deleteProfileButton, lookupProfileButton,
				addSchoolButton, addWorkplaceButton);
	}

	private void addNorthComponentListeners() {
		addProfileButton.addActionListener((event) -> {
			application.createProfile(userInputTextField.getText());
		});

		deleteProfileButton.addActionListener((event) -> {
			application.deleteProfile(userInputTextField.getText());
		});

		lookupProfileButton.addActionListener((event) -> {
			application.lookupProfile(userInputTextField.getText());
		});

		addSchoolButton.addActionListener((event) -> {
			application.addSchool(userInputTextField.getText());
		});

		addWorkplaceButton.addActionListener((event) -> {
			application.addWorkplace(userInputTextField.getText());
		});
	}

	private void initWestComponents() {
		setNormalModeButton = new JButton("Set Normal Mode");
		setAdminModeButton = new JButton("Set Admin Mode");

		changeStatusTextField = new JTextField(TEXT_FIELD_SIZE);
		changeStatusButton = new JButton("Change Status");

		changePictureTextField = new JTextField(TEXT_FIELD_SIZE);
		changePictureButton = new JButton("Change Picture");

		addFriendTextField = new JTextField(TEXT_FIELD_SIZE);
		addFriendButton = new JButton("Add Friend");

		addEducationNameTextField = new JTextField("School Name", TEXT_FIELD_SIZE);
		addEducationGraduationDateTextField = new JTextField("Graduation Date", TEXT_FIELD_SIZE);
		addEduactionButton = new JButton("Add School Graduation");

		addWorkplaceNameTextField = new JTextField("Workplace Name", TEXT_FIELD_SIZE);
		addWorkplaceStartDateTextField = new JTextField("Start Date", TEXT_FIELD_SIZE);
		addWorkplaceEndDateTextField = new JTextField("End Date", TEXT_FIELD_SIZE);
		addProfileWorkplaceButton = new JButton("Add Occupation");
	}

	private void addWestComponents() {
		addComponents(WEST, setNormalModeButton, setAdminModeButton, getSpaceHolder(), changeStatusTextField,
				changeStatusButton, getSpaceHolder(), changePictureTextField, changePictureButton, getSpaceHolder(),
				addFriendTextField, addFriendButton, getSpaceHolder(), addEducationNameTextField,
				addEducationGraduationDateTextField, addEduactionButton, getSpaceHolder(), addWorkplaceNameTextField,
				addWorkplaceStartDateTextField, addWorkplaceEndDateTextField, addProfileWorkplaceButton);
	}

	private void addWestComponentListeners() {
		setNormalModeButton.addActionListener((event) -> {
			application.setNormalMode();
		});

		setAdminModeButton.addActionListener((event) -> {
			application.setAdminMode();
		});

		changeStatusButton.addActionListener((event) -> {
			application.changeStatus(getProfileCanvas().getCurrentProfile(), changeStatusTextField.getText());
		});

		changePictureButton.addActionListener((event) -> {
			application.changePicture(getProfileCanvas().getCurrentProfile(), changePictureTextField.getText());
		});

		addFriendButton.addActionListener((event) -> {
			application.addFriend(getProfileCanvas().getCurrentProfile(), addFriendTextField.getText());
		});

		addEduactionButton.addActionListener((event) -> {
			application.addEducation(getProfileCanvas().getCurrentProfile(), addEducationNameTextField.getText(),
					addEducationGraduationDateTextField.getText());
		});

		addProfileWorkplaceButton.addActionListener((event) -> {
			application.addWorkplace(getProfileCanvas().getCurrentProfile(), addWorkplaceNameTextField.getText(),
					addWorkplaceStartDateTextField.getText(), addWorkplaceEndDateTextField.getText());
		});
	}

	private void addComponents(String direction, JComponent... components) {
		for (JComponent component : components)
			add(component, direction);
	}

	private JComponent getSpaceHolder() {
		return new JLabel(EMPTY_LABEL_TEXT);
	}

	public ProfileCanvas getProfileCanvas() {
		return (ProfileCanvas) canvases.get("ProfileCanvas");
	}

	public AdminCanvas getAdminCanvas() {
		return (AdminCanvas) canvases.get("AdminCanvas");
	}

	public SchoolCanvas getSchoolCanvas() {
		return (SchoolCanvas) canvases.get("SchoolCanvas");
	}

	public WorkplaceCanvas getWorkplaceCanvas() {
		return (WorkplaceCanvas) canvases.get("WorkplaceCanvas");
	}

	public void setCurrentCanvas(String canvasName) {
		removeAll();
		validate();
		currentCanvas = canvases.get(canvasName);
		add(currentCanvas);
		validate();
	}
}
