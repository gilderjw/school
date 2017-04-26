module rdt10

open util/ordering[State]

sig Data{}

//model one instance in time
sig State {
	sendBuffer: set Data,
	receiveBuffer: set Data,
	bout2send: lone Data
}

//initial state of the system
pred State.Init[] {
	this.receiveBuffer = none and
	this.sendBuffer = Data
}

//all data have been successfully been transfered
pred State.AllTransferedOK[] {
	this.receiveBuffer = Data and
	this.sendBuffer = none
}

//transition between states
pred Transition[s, s': State] {
	s'.receiveBuffer = s.receiveBuffer + s.bout2send and
	s'.sendBuffer = s.sendBuffer - s.bout2send and
	s'.bout2send in s'.sendBuffer
}

//each step in time has to move forward
pred Progress[s, s': State] {
	s.receiveBuffer != s'.receiveBuffer or
	s.AllTransferedOK
}

fact Trace {
	all s : State - last |
		let s' = s.next | 
			Transition[s, s'] and
			Progress[s, s']
}

//can you send all the information in the given time
pred CanTransmit {
	first.Init
	last.AllTransferedOK
}

//is there a way to fail at sending the data
pred CannotTransmit {
	first.Init
	!last.AllTransferedOK
}

run CanTransmit for 6 State, exactly 3 Data

run CannotTransmit for 6 State, exactly 3 Data
