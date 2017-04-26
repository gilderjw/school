package org.yakindu.scr.elevatormodeling;

import org.yakindu.scr.IStatemachine;

public interface IElevatorModelingStatemachine extends IStatemachine {

	public interface SCIUser {
	
		public void raiseFloor1();
		
		public void raiseFloor2();
		
		public void raiseFloor3();
		
		public void raiseEmergency();
		
		public void raiseResume();
		
	}
	
	public SCIUser getSCIUser();
	
	public interface SCIElevator {
	
		public void setSCIElevatorOperationCallback(SCIElevatorOperationCallback operationCallback);
	
	}
	
	public interface SCIElevatorOperationCallback {
	
		public void arrive(long floor);
		
	}
	
	public SCIElevator getSCIElevator();
	
}
