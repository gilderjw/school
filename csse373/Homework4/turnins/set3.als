sig Object{
	ref : Int
}

one sig Null extends Object {
	
}
{ref = 0}

fact NullnessReferenceFact {
	all o: (Object - Null) | o.ref != 0
}

fact RefereceEqualityConstraint {
	all o1, o2: Object | o1.ref = o2.ref <=> o1 = o2
}

sig Point extends Object {
	x: Int,
	y: Int
}

sig PolarPoint extends Point {}

sig Point3D extends Point{
	z: Int
}

//modeling dynamic dispatch based on reciever type
pred Object.equals[o: Object] {
	this in Object - Point =>
		this.equalsObject[o]
	else this in Point3D => 
		this.equalsPoint3D[o]
	else this in Point =>
		this.equalsPoint[o]
}

//modeling equals for Object
pred Object.equalsObject[o: Object] {
	this = o
}

//modeling equals of point class
pred Point.equalsPoint[o: Object] {
	 (
		o in Point and
		this.x = o.x and 
		this.y = o.y
	)
}

//modeling equals for Point3D class
pred Point3D.equalsPoint3D[o: Object]{
	(o not in Point3D and 
	 Point3D.equalsPoint[o]
	) or (
		o in Point3D and
		Point3D.equalsPoint[o] and
		Point3D.z = o.z
	)
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
