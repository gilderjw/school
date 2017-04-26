module sample

pred p{}
pred q{}
pred r{}
pred s{}
pred t{}

fact Premises {
	!q implies !p
}

assert Conclusion{
	p implies q
}

check Conclusion for 4
