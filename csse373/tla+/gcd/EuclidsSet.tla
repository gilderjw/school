----------------------------- MODULE EuclidsSet -----------------------------
EXTENDS Integers, FiniteSets, gcd

CONSTANT Input

ASSUME /\ Input \subseteq Nat \ {0}
       /\ Input # {}
       /\ IsFiniteSet(Input)
       
SetGCD(T) == setMax({d \in Int: \A t \in T: divides(d, t)})

(*
--fair algorithm EuclidSet {
    variable S = Input; 
    {
        while(Cardinality(S) > 1) {
            with(x \in S, y \in {s \in S: s > x}) {
                S:= (S \ {y}) \cup {y-x}
            }
        }
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES S, pc

vars == << S, pc >>

Init == (* Global variables *)
        /\ S = Input
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF Cardinality(S) > 1
               THEN /\ \E x \in S:
                         \E y \in {s \in S: s > x}:
                           S' = ((S \ {y}) \cup {y-x})
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ S' = S

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") => (S = {SetGCD(Input)})

TypeOK == /\ S \subseteq Nat \ {0}
          /\ S # {}
          /\ IsFiniteSet(S)
          
SInv == /\ TypeOK
        /\ SetGCD(S) = SetGCD(Input)
        /\ PartialCorrectness
        
        


=============================================================================
\* Modification History
\* Last modified Mon May 08 16:04:41 EDT 2017 by gilderjw
\* Created Mon May 08 15:41:03 EDT 2017 by gilderjw
