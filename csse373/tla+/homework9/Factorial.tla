----------------------------- MODULE Factorial -----------------------------
EXTENDS Integers

CONSTANTS N

ASSUME N \in Int

RECURSIVE Factorial(_)
Factorial(n) == IF n = 0 THEN 1 ELSE n * Factorial(n-1) 

(**
--fair algorithm Factorial {
    variable num \in 1..N, i = 1, fact = 1;
    {
        while(i < num) {
            fact := fact * i;
            i := i + 1
        }
    }
}
**)

\* BEGIN TRANSLATION
VARIABLES num, i, fact, pc

vars == << num, i, fact, pc >>

Init == (* Global variables *)
        /\ num \in 1..N
        /\ i = 1
        /\ fact = 1
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF i < num
               THEN /\ fact' = fact * i
                    /\ i' = i + 1
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << i, fact >>
         /\ num' = num

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") => fact = Factorial(num) 
                        
                        

=============================================================================
\* Modification History
\* Last modified Tue May 16 13:09:39 EDT 2017 by jeem
\* Last modified Thu May 12 22:36:44 EDT 2016 by rupakhet
\* Created Thu May 12 22:13:13 EDT 2016 by rupakhet
