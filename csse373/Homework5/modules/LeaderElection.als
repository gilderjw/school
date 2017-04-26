module examples/ringElection
open util/ordering[Time] as TO
open util/ordering[Process] as PO

//represents a single instance in time
sig Time {}

//represents a single process in the ring
sig Process {
	succ: Process,  
	toSend: Process -> Time,
	elected: set Time
}

//each process is eventually connected to itself in the ring
fact Ring {all p: Process | Process in p.^succ}

//each process can originally only send to itself
pred init (t: Time) {all p: Process | p.toSend.t = p}

//an id can be moved from a process to its successor
pred step (t, t': Time, p: Process) {
	let from = p.toSend, to = p.succ.toSend |
		some id: from.t {
			from.t' = from.t - id
			to.t' = to.t + (id - PO/prevs[p.succ])
	}
}

//do nothing for a step
pred skip (t, t': Time, p: Process) {p.toSend.t = p.toSend.t'}

//models the timing
//init is true for the first time frame
//then, each other time frame, p or its successor will step, or nothing
fact Traces {
		init [TO/first []]
		all t: Time - TO/last[] | let t' = TO/next [t] |
			all p: Process |
				step [t, t', p] or step [t, t', succ.p] or skip [t, t', p]
}

//there is no state elected in the first time spot
//every other time slot, the one elected recieved themselves
fact DefineElected {
	no elected.TO/first[]
	all t: Time - TO/first[] |
		elected.t =
			{p: Process | p in p.toSend.t - p.toSend.(TO/prev[t])}
}

//There is at most one process elected
assert AtMostOneElected {lone elected.Time}
//check AtMostOneElected for up to 3 process and 7 time steps
check AtMostOneElected for 3 Process, 7 Time

//some process is forced to make a move with each step
pred progress () {
	all t: Time - TO/last[] | let t' = TO/next [t] |
		some Process.toSend.t =>
			some p: Process | not skip [t, t', p]
}

//assert that progress holds
assert AtLeastOneElected {
	progress [] => some elected.Time
}

//total states cannot repeat
pred looplessPath () {no disj t, t': Time | toSend.t = toSend.t'}

//run predicate above
run looplessPath for 13 Time, 3 Process

pred show {some elected}
run show for 3 Process, 4 Time

assert AtLeastOneElectedWithAnIssue	{
	some t: Time | some elected.t
}
check AtLeastOneElectedWithAnIssue for 3 but 7 Time

check AtLeastOneElected for 3 Process, 7 Time
