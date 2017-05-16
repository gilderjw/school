-------------------------------- MODULE GCD --------------------------------

EXTENDS Integers

(***************************************************************************)
(*                                                                         *)
(* For integers p and n, equals TRUE iff p divides n                       *)
(*                                                                         *)
(***************************************************************************)
divides(p,n) == \E q \in Int: n = q * p


divisorsOf(n) == {p \in Int: divides(p, n)}
setMax(s) == CHOOSE i \in s: \A j \in s: i >= j
GCD(m, n) == setMax(divisorsOf(m) \cap divisorsOf(n))
=============================================================================
\* Modification History
\* Last modified Mon May 08 20:37:29 EDT 2017 by jeem
\* Created Mon May 08 20:37:16 EDT 2017 by jeem
