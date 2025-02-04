package driver;

import org.yakindu.scr.elevatormodeling.ElevatorModelingStatemachine;
import org.yakindu.scr.elevatormodeling.IElevatorModelingStatemachine;

public class ElevatorModelDriver {
	public static void main(String[] args) {
		ElevatorModelingStatemachine sm = new ElevatorModelingStatemachine();
		
		IElevatorModelingStatemachine.SCIUser user = sm.getSCIUser();
		IElevatorModelingStatemachine.SCIElevator elevator = sm.getSCIElevator();
		
		IElevatorModelingStatemachine.SCIElevatorOperationCallback arriveCb = new ArriveCallback();
		
		elevator.setSCIElevatorOperationCallback(arriveCb);
		
		//start up the state machine 
		sm.init();
		sm.enter();
		
		user.raiseFloor1();
		sm.runCycle();
		user.raiseFloor2();
		sm.runCycle();
		user.raiseFloor3();
		sm.runCycle();
		user.raiseFloor2();
		sm.runCycle();
		user.raiseFloor1();
		sm.runCycle();
		user.raiseFloor3();
		sm.runCycle();
		user.raiseFloor1();
		sm.runCycle();
		
		//pull emergency
		user.raiseEmergency();
		sm.runCycle();
		
		//these should not happen
		user.raiseFloor2();
		sm.runCycle();
		user.raiseFloor3();
		sm.runCycle();
		user.raiseFloor1();
		sm.runCycle();
		
		//resume
		user.raiseResume();
		sm.runCycle();
		user.raiseFloor3();
		sm.runCycle();
		
	
		
	}
}
