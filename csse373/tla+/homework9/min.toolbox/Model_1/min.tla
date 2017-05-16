-------------------------------- MODULE min --------------------------------

EXTENDS Integers, Sequences, TLC, FiniteSets

Min(a, b, c) == CHOOSE i \in {a, b, c}: \A j \in {a, b, c}: i <= j
                                
                
(**
--fair algorithm Min {
    variable a \in Nat , b \in Nat, c \in Nat, min = 0;
    {
        min := b;
        if (b < min)
            min := b;
        if (c < min)
            min := c;
    }
}
**)                
\* BEGIN TRANSLATION
VARIABLES a, b, c, min, pc

vars == << a, b, c, min, pc >>

Init == (* Global variables *)
        /\ a \in Nat
        /\ b \in Nat
        /\ c \in Nat
        /\ min = 0
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ min' = b
         /\ IF b < min'
               THEN /\ pc' = "Lbl_2"
               ELSE /\ pc' = "Lbl_3"
         /\ UNCHANGED << a, b, c >>

Lbl_2 == /\ pc = "Lbl_2"
         /\ min' = b
         /\ pc' = "Lbl_3"
         /\ UNCHANGED << a, b, c >>

Lbl_3 == /\ pc = "Lbl_3"
         /\ IF c < min
               THEN /\ min' = c
               ELSE /\ TRUE
                    /\ min' = min
         /\ pc' = "Done"
         /\ UNCHANGED << a, b, c >>

Next == Lbl_1 \/ Lbl_2 \/ Lbl_3
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") => min = Min(a, b, c)
=============================================================================
\* Modification History
\* Last modified Tue May 16 15:47:30 EDT 2017 by jeem
\* Created Tue May 16 13:15:51 EDT 2017 by jeem
