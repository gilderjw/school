------------------------------ MODULE Euclids ------------------------------

EXTENDS Integers, GCD

CONSTANTS M, N

ASSUME /\ M \in Nat \ {0}
       /\ N \in Nat \ {0}

(*
--algorithm Euclid {
    variables x = M, y = N; 
    {
        while (x # y) {
            if (x < y) {
                y := y - x
            } else {
                x := x - y
            }
        };
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES x, y, pc

vars == << x, y, pc >>

Init == (* Global variables *)
        /\ x = M
        /\ y = N
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF x # y
               THEN /\ IF x < y
                          THEN /\ y' = y-x
                               /\ x' = x
                          ELSE /\ x' = x-y
                               /\ y' = y
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << x, y >>

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == Init /\ [][Next]_vars

Termination == <>(pc = "Done")

\* END TRANSLATION
=============================================================================
\* Modification History
\* Last modified Mon May 08 21:00:50 EDT 2017 by jeem
\* Created Mon May 08 20:36:29 EDT 2017 by jeem
