module sample

pred p{}
pred q{}
pred r{}
pred s{}
pred t{}

fact Premises {
	p implies (q implies r)
	p and !r
}

assert Conclusion{
	!q
}

check Conclusion for 4
