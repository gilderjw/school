package org.yakindu.scr.defaultsm;

public class DefaultSMStatemachine implements IDefaultSMStatemachine {

	private boolean initialized = false;
	
	public enum State {
		main_region_off,
		main_region_On,
		$NullState$
	};
	
	private final State[] stateVector = new State[1];
	
	private int nextStateIndex;
	
	private boolean operate;
	
	public DefaultSMStatemachine() {
	}
	
	public void init() {
		this.initialized = true;
		for (int i = 0; i < 1; i++) {
			stateVector[i] = State.$NullState$;
		}
		clearEvents();
		clearOutEvents();
	}
	
	public void enter() {
		if (!initialized) {
			throw new IllegalStateException(
					"The state machine needs to be initialized first by calling the init() function.");
		}
		enterSequence_main_region_default();
	}
	
	public void exit() {
		exitSequence_main_region();
	}
	
	/**
	 * @see IStatemachine#isActive()
	 */
	public boolean isActive() {
		return stateVector[0] != State.$NullState$;
	}
	
	/** 
	* Always returns 'false' since this state machine can never become final.
	*
	* @see IStatemachine#isFinal()
	*/
	public boolean isFinal() {
		return false;
	}
	/**
	* This method resets the incoming events (time events included).
	*/
	protected void clearEvents() {
		operate = false;
	}
	
	/**
	* This method resets the outgoing events.
	*/
	protected void clearOutEvents() {
	}
	
	/**
	* Returns true if the given state is currently active otherwise false.
	*/
	public boolean isStateActive(State state) {
	
		switch (state) {
		case main_region_off:
			return stateVector[0] == State.main_region_off;
		case main_region_On:
			return stateVector[0] == State.main_region_On;
		default:
			return false;
		}
	}
	
	private void raiseOperate() {
		operate = true;
	}
	
	private boolean check_main_region_off_tr0_tr0() {
		return operate;
	}
	
	private boolean check_main_region_On_tr0_tr0() {
		return operate;
	}
	
	private void effect_main_region_off_tr0() {
		exitSequence_main_region_off();
		enterSequence_main_region_On_default();
	}
	
	private void effect_main_region_On_tr0() {
		exitSequence_main_region_On();
		enterSequence_main_region_off_default();
	}
	
	/* 'default' enter sequence for state off */
	private void enterSequence_main_region_off_default() {
		nextStateIndex = 0;
		stateVector[0] = State.main_region_off;
	}
	
	/* 'default' enter sequence for state On */
	private void enterSequence_main_region_On_default() {
		nextStateIndex = 0;
		stateVector[0] = State.main_region_On;
	}
	
	/* 'default' enter sequence for region main region */
	private void enterSequence_main_region_default() {
		react_main_region__entry_Default();
	}
	
	/* Default exit sequence for state off */
	private void exitSequence_main_region_off() {
		nextStateIndex = 0;
		stateVector[0] = State.$NullState$;
	}
	
	/* Default exit sequence for state On */
	private void exitSequence_main_region_On() {
		nextStateIndex = 0;
		stateVector[0] = State.$NullState$;
	}
	
	/* Default exit sequence for region main region */
	private void exitSequence_main_region() {
		switch (stateVector[0]) {
		case main_region_off:
			exitSequence_main_region_off();
			break;
		case main_region_On:
			exitSequence_main_region_On();
			break;
		default:
			break;
		}
	}
	
	/* The reactions of state off. */
	private void react_main_region_off() {
		if (check_main_region_off_tr0_tr0()) {
			effect_main_region_off_tr0();
		}
	}
	
	/* The reactions of state On. */
	private void react_main_region_On() {
		if (check_main_region_On_tr0_tr0()) {
			effect_main_region_On_tr0();
		}
	}
	
	/* Default react sequence for initial entry  */
	private void react_main_region__entry_Default() {
		enterSequence_main_region_off_default();
	}
	
	public void runCycle() {
		if (!initialized)
			throw new IllegalStateException(
					"The state machine needs to be initialized first by calling the init() function.");
		clearOutEvents();
		for (nextStateIndex = 0; nextStateIndex < stateVector.length; nextStateIndex++) {
			switch (stateVector[nextStateIndex]) {
			case main_region_off:
				react_main_region_off();
				break;
			case main_region_On:
				react_main_region_On();
				break;
			default:
				// $NullState$
			}
		}
		clearEvents();
	}
}
