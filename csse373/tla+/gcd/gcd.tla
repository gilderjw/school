-------------------------------- MODULE gcd --------------------------------
EXTENDS Integers

divides(p,n) == \E q \in Int: n = q * p
divisorsOf(n) == {p \in Int: divides(p, n)}
setMax(s) == CHOOSE i \in s: \A j \in s: i >= j
GCD(m, n) == setMax(divisorsOf(m) \cap divisorsOf(n))

THEOREM GCD1 == \A m \in Nat \ {0}: GCD(m,m) = m
THEOREM GCD2 == \A m,n \in Nat \ {0}: GCD(m,n) = GCD(n,m)
THEOREM GCD3 == \A m,n \in Nat \ {0}: (m > n) => (GCD(m,n) = GCD(n, m-n)) 


=============================================================================
\* Modification History
\* Last modified Mon May 08 15:37:18 EDT 2017 by gilderjw
\* Created Mon May 08 15:28:04 EDT 2017 by gilderjw
