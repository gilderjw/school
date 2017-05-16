-------------------------------- MODULE Max --------------------------------
EXTENDS Integers, Sequences, TLC, FiniteSets

Max(array) == CHOOSE max \in Int :
                /\ \E i \in 1..Len(array) : max = array[i]
                /\ \A j \in 1..Len(array) : max >= array[j]


(**
--fair algorithm Max {
    variable array \in [Nat\{0} -> Int], max = 0, i = 0;
    {
        max := array[1];
        i := 2;
                    
        while(i < Len(array)) {
            if(array[i] < max)
                max := array[i];
            i := i + 1;
        };
    }
}
**) 

\* BEGIN TRANSLATION
VARIABLES array, max, i, pc

vars == << array, max, i, pc >>

Init == (* Global variables *)
        /\ array \in [Nat\{0} -> Int]
        /\ max = 0
        /\ i = 0
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ max' = array[1]
         /\ i' = 2
         /\ pc' = "Lbl_2"
         /\ array' = array

Lbl_2 == /\ pc = "Lbl_2"
         /\ IF i < Len(array)
               THEN /\ IF array[i] < max
                          THEN /\ max' = array[i]
                          ELSE /\ TRUE
                               /\ max' = max
                    /\ i' = i + 1
                    /\ pc' = "Lbl_2"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << max, i >>
         /\ array' = array

Next == Lbl_1 \/ Lbl_2
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") /\ Len(array) > 0 =>
                        max = Max(array)
=============================================================================
\* Modification History
\* Last modified Fri May 13 02:09:35 EDT 2016 by rupakhet
\* Created Thu May 12 22:38:13 EDT 2016 by rupakhet
