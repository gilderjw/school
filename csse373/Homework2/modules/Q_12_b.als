module sample

pred p{}
pred q{}
pred r{}
pred s{}
pred t{}

fact Premises {
	!!(p and q)
	!!(q and r)
}

assert Conclusion{
	p and !!q
}

check Conclusion for 4
