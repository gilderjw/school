package guiDemo;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.InputEvent;

public class GUIDemo {

	public static void main(String[] args) throws AWTException {
		Robot robot = new Robot();

		robot.mouseMove(0, 0);
		robot.mousePress(InputEvent.BUTTON1_MASK);
		robot.mouseRelease(InputEvent.BUTTON1_MASK);
	}

}
