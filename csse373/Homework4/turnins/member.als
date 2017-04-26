sig Object{
	ref : Int
}

one sig Null extends Object {}
{ref = 0}

sig Str{}

fact NullnessReferenceFact {
	all o: (Object - Null) | o.ref != 0
}

fact RefereceEqualityConstraint {
	all o1, o2: Object | o1.ref = o2.ref <=> o1 = o2
}

sig Member extends Object {
	name: Str,
	ssn: Int,
	roseId: Int
}

//modeling dynamic dispatch based on reciever type
pred Object.equals[o: Object] {
	this in Object - Member =>
		this.equalsObject[o]
	else this in Member => 
		this.equalsMember[o]
}

//modeling equals for Object
pred Object.equalsObject[o: Object] {
	this = o
}

pred Member.equalsMember[o: Object] {
	o in Member and
	this.name = o.name and
	(this.ssn = o.ssn or this.roseId = o.roseId)
}

assert Reflexivity {
	all o: (Object - Null) | o.equals[o]
}

assert Symmetry {
	all o1, o2: (Object - Null)  | o1.equals[o2] <=> o2.equals[o1]
}

assert Transivity {
	all o1, o2, o3: (Object - Null)  |
		o1.equals[o2] and o2.equals[o3] => o1.equals[o3]
}

assert Nullity {
	all o: (Object - Null)  | !o.equals[Null]
}

check Reflexivity for 2
check Symmetry for 3
check Transivity for 4
check Nullity for 2
