module rdt20

open util/ordering[State]

sig Packet {
	data: one Data,
	checksum: lone Data
}

sig Data{}

//one sig SEND extends Message {}
one sig ACK extends Data {}
one sig NAK extends Data {}

//model one instance in time
sig State {
	sendBuffer: set Data,
	receiveBuffer: set Data,
	channel: lone Packet,
	tryingToSend: lone Data
}

//initial state of the system
pred State.Init[] {
	this.receiveBuffer = none and
	this.sendBuffer = Data - (ACK + NAK) and
	this.channel.data = ACK and 
	this.tryingToSend = none

}

//all data have been successfully been transfered
pred State.AllTransferedOK[] {
	this.receiveBuffer = Data - (ACK+NAK) and
	this.sendBuffer = none
}

//transition between states
pred Transition[s, s': State] {
	((s.channel.data) = ACK) => ACKinChannel[s, s']

	((s.channel.data) = NAK) => NAKinChannel[s, s']

	((s.channel.data) not in (NAK + ACK)) => SENDinChannel[s, s']
}

pred ACKinChannel[s, s': State] {
	s'.channel.data in s.sendBuffer and
	s'.channel.checksum in Data and
	s'.tryingToSend = s'.channel.data and
	s'.sendBuffer = s.sendBuffer - s'.channel.data and
	s'.receiveBuffer = s.receiveBuffer
}

pred NAKinChannel[s, s': State] {
	s'.channel.data in s.tryingToSend and 
	s'.channel.checksum in Data and
	s'.tryingToSend = s.tryingToSend and 
	s'.sendBuffer = s.sendBuffer and 
	s'.receiveBuffer = s.receiveBuffer
}

pred SENDinChannel[s, s': State] {
	s'.tryingToSend = s.tryingToSend and 
	s'.sendBuffer = s.sendBuffer and

	((s.channel.checksum != s.channel.data) =>
		s'.channel.data in NAK and
		s'.receiveBuffer = s.receiveBuffer) and 

	((s.channel.checksum = s.channel.data) =>
		s'.receiveBuffer = s.receiveBuffer + s.channel.data and
		s'.channel.data in ACK)
}

//each step in time has to move forward
pred Progress[s, s': State] {
	s.channel != s'.channel or
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

run CanTransmit for 6 State, exactly 6 Data, 10 Packet

run CannotTransmit for 5 State, exactly 6 Data, 10 Packet
