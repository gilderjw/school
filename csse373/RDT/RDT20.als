module rdt20

open util/ordering[State]
abstract sig Message{}

//one sig SEND extends Message {}
one sig ACK extends Message {}
one sig NAK extends Message {}


sig Data{}

//model one instance in time
sig State {
	sendBuffer: set Data,
	receiveBuffer: set Data,
	channel: lone Data,
	msgType: one Message
}

//initial state of the system
pred State.Init[] {
	this.receiveBuffer = none and
	this.sendBuffer = Data and
	this.channel = none and
	this.msgType in ACK
}

//all data have been successfully been transfered
pred State.AllTransferedOK[] {
	this.receiveBuffer = Data and
	this.sendBuffer = none
}

//transition between states
pred Transition[s, s': State] {
	s.msgType in ACK => ACKinChannel[s, s']
	s.msgType in NAK => NAKinChannel[s, s']
//	s.msgType in SEND => SENDinChannel[s, s']
}

pred ACKinChannel[s, s': State] {
	s'.channel in s.sendBuffer and
	s'.sendBuffer = s.sendBuffer - s'.channel and
	s'.receiveBuffer = s.receiveBuffer + s.channel and
	s'.msgType in Message
}

pred NAKinChannel[s, s': State] {
	s'.receiveBuffer = s.receiveBuffer and
	s'.sendBuffer = s.sendBuffer and
	s'.channel = s.channel
	s'.msgType in Message
}

//pred SENDinChannel[s, s': State] {
//	s'.msgType in ACK and
//	s'.msgType in ACK => (
//			s'.receiveBuffer = s.receiveBuffer + s.channel and
//			s'.channel = none
//	) and 
//	s'.msgType in NAK => (
//		s'.receiveBuffer = s.receiveBuffer and 
//		s'.channel = s.channel
//	) and 
//	s'.sendBuffer = s.sendBuffer
//}

//each step in time has to move forward
pred Progress[s, s': State] {
	s.channel != s'.channel or
	s.msgType in NAK or
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

run CannotTransmit for 5 State, exactly 3 Data
