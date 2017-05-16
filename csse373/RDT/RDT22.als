module rdt22

open util/ordering[State]
open util/boolean 

sig Packet {
	data: one Data,
	checksum: one Data,
	sequence: one Int
}

// all packet sequences are 0 or 1
fact PacketSequence {
	all p: Packet | p.sequence = 0 or p.sequence = 1
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
	tryingToSend: lone Data,
	timeout: one Int,
	messedup: one Bool
}

//initial state of the system
pred State.Init[] {
	this.receiveBuffer = none and
	this.tryingToSend in Data - (ACK + NAK) and
	this.sendBuffer = Data - (ACK + NAK) - this.tryingToSend and
	this.channel.data = this.tryingToSend and
	this.channel.sequence = 0 and
	this.timeout = 2 and
	this.messedup = False
}

//all data have been successfully been transfered
pred State.AllTransferedOK[] {
	this.receiveBuffer = Data - (ACK+NAK) and
	this.sendBuffer = none
}

//transition between states
pred Transition[s, s': State] {
	(((s.channel.data) = ACK) => ACKinChannel[s, s']) and

	(((s.channel.data) = NAK) => NAKinChannel[s, s']) and

	(((s.channel.data) not in (NAK + ACK)) => SENDinChannel[s, s']) and

	((s.channel = none) => nothingInChannel[s, s'])
}

pred ACKinChannel[s, s': State] {
	((s.channel.data = s.channel.checksum) =>
		(s'.channel.data in s.sendBuffer and
		s'.channel.checksum in Data and 
		s'.tryingToSend = s'.channel.data and
		s'.sendBuffer = s.sendBuffer - s'.channel.data and
		s'.receiveBuffer = s.receiveBuffer and
		s'.channel.sequence = 0 and
		s'.timeout = 2 and 
		s'.messedup = False)) and
	((s.channel.data != s.channel.checksum) => 
			(	s'.channel.data = s.tryingToSend and 
			s'.channel.checksum in Data and
			s'.tryingToSend = s.tryingToSend and 
			s'.sendBuffer = s.sendBuffer and 
			s'.channel.sequence = 1 and
			s'.receiveBuffer = s.receiveBuffer and
			s'.timeout = 2 and
			s'.messedup = True))
}

pred nothingInChannel[s, s': State] {
	((s.timeout = 0) => (
		sendNewPacketMessup[s, s']
	)) and
	((s.timeout != 0) => (
		s'.channel = s.channel and
		s'.tryingToSend = s.tryingToSend and
		s'.sendBuffer = s.sendBuffer and
		s'.receiveBuffer = s.receiveBuffer and
		s'.timeout = s.timeout - 1 and
		s'.messedup = s.messedup
		))
}

pred NAKinChannel[s, s': State] {
	sendNewPacketMessup[s, s']
}

pred sendNewPacketMessup[s, s': State] {
	s'.channel.data = s.tryingToSend and 
	s'.messedup = True and 
	((s.messedup = False) =>
		(s'.channel.checksum in Data)) and
	((s.messedup = True) => 
		(s'.channel.checksum = s'.channel.data)) and
	s'.tryingToSend = s.tryingToSend and 
	s'.sendBuffer = s.sendBuffer and 
	s'.receiveBuffer = s.receiveBuffer and
	s'.channel.sequence = 1 and
	s'.messedup = s.messedup and
	s'.timeout = 2
}

pred SENDinChannel[s, s': State] {
	s'.tryingToSend = s.tryingToSend and 
	s'.sendBuffer = s.sendBuffer and
	s'.timeout = s.timeout - 1 and

	((s.channel.checksum != s.channel.data) =>
		(s'.channel.data in NAK and
		s'.receiveBuffer = s.receiveBuffer)) and 

	((s.channel.checksum = s.channel.data) =>
		((s.channel.sequence = 0) =>
			(s'.receiveBuffer = s.receiveBuffer + s.channel.data and
			s'.channel.data = ACK)) and
		((s.channel.sequence = 1) =>
			(s'.receiveBuffer = s.receiveBuffer + s.channel.data and 
			s'.channel.data = ACK and
			s'.channel.checksum = ACK)))
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

run CanTransmit for 7 State, exactly 5 Data, 7 Packet

run CannotTransmit for 7 State, exactly 5 Data, 7 Packet
