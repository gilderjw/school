module sample

pred p{}
pred q{}
pred r{}
pred s{}
pred t{}

fact Premises {
	p implies !q
	q
}

assert Conclusion{
	!p
}

check Conclusion for 4
