-------------------------------- MODULE sort --------------------------------
EXTENDS Integers, Sequences

IsSorted(array) == \A i \in 1..Len(array)-1:
                        array[i] <= array[i+1]

(*
--fair algorithm Sort {
    variable array \in [Int->Int], n = Len(array), k = 0, m = n, i = 0, tmp = 0;
    {
        while(m >= 0) {
            i := 0;
            while(i < n - 1) {
                k := i + 1;
                if (array[i+1] > array[k+1]) {
                    tmp := array[i+1];
                    array[i+1] := array[k+1];
                    array[k+1] := tmp;
                };   
                
                i := i + 1;
            };
            m := m - 1;
        };
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES array, n, k, m, i, tmp, pc

vars == << array, n, k, m, i, tmp, pc >>

Init == (* Global variables *)
        /\ array \in [Int->Int]
        /\ n = Len(array)
        /\ k = 0
        /\ m = n
        /\ i = 0
        /\ tmp = 0
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF m >= 0
               THEN /\ i' = 0
                    /\ pc' = "Lbl_2"
               ELSE /\ pc' = "Done"
                    /\ i' = i
         /\ UNCHANGED << array, n, k, m, tmp >>

Lbl_2 == /\ pc = "Lbl_2"
         /\ IF i < n - 1
               THEN /\ k' = i + 1
                    /\ IF array[i+1] > array[k'+1]
                          THEN /\ tmp' = array[i+1]
                               /\ array' = [array EXCEPT ![i+1] = array[k'+1]]
                               /\ pc' = "Lbl_3"
                          ELSE /\ pc' = "Lbl_4"
                               /\ UNCHANGED << array, tmp >>
                    /\ m' = m
               ELSE /\ m' = m - 1
                    /\ pc' = "Lbl_1"
                    /\ UNCHANGED << array, k, tmp >>
         /\ UNCHANGED << n, i >>

Lbl_4 == /\ pc = "Lbl_4"
         /\ i' = i + 1
         /\ pc' = "Lbl_2"
         /\ UNCHANGED << array, n, k, m, tmp >>

Lbl_3 == /\ pc = "Lbl_3"
         /\ array' = [array EXCEPT ![k+1] = tmp]
         /\ pc' = "Lbl_4"
         /\ UNCHANGED << n, k, m, i, tmp >>

Next == Lbl_1 \/ Lbl_2 \/ Lbl_4 \/ Lbl_3
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION

PartialCorrectness == (pc = "Done") => IsSorted(array)

=============================================================================
\* Modification History
\* Last modified Tue May 16 17:17:50 EDT 2017 by jeem
\* Created Tue May 16 17:03:00 EDT 2017 by jeem
