------------------------------- MODULE Search -------------------------------
EXTENDS Integers, Sequences

Search(key, data) == \E i \in 1..Len(data) : key = data[i]

(*
--fair algorithm search {
    variable key \in Int, data \in [Int -> Int], low = 0, high = Len(data), middle = 0, ret = FALSE;
    {
        while (high >= low) {
            middle := ((low + high) \div 2) + 1;
            if (data[middle] = key) {
                ret := TRUE;
            };
            if (data[middle] < key) {
                low := middle + 1;
            };
            if(data[middle] > key) {
                high := middle - 1;
            };
        };
    }
}
*)
\* BEGIN TRANSLATION
VARIABLES key, data, low, high, middle, ret, pc

vars == << key, data, low, high, middle, ret, pc >>

Init == (* Global variables *)
        /\ key \in Int
        /\ data \in [Int -> Int]
        /\ low = 0
        /\ high = Len(data)
        /\ middle = 0
        /\ ret = FALSE
        /\ pc = "Lbl_1"

Lbl_1 == /\ pc = "Lbl_1"
         /\ IF high >= low
               THEN /\ middle' = ((low + high) \div 2) + 1
                    /\ IF data[middle'] = key
                          THEN /\ ret' = TRUE
                          ELSE /\ TRUE
                               /\ ret' = ret
                    /\ IF data[middle'] < key
                          THEN /\ low' = middle' + 1
                          ELSE /\ TRUE
                               /\ low' = low
                    /\ IF data[middle'] > key
                          THEN /\ high' = middle' - 1
                          ELSE /\ TRUE
                               /\ high' = high
                    /\ pc' = "Lbl_1"
               ELSE /\ pc' = "Done"
                    /\ UNCHANGED << low, high, middle, ret >>
         /\ UNCHANGED << key, data >>

Next == Lbl_1
           \/ (* Disjunct to prevent deadlock on termination *)
              (pc = "Done" /\ UNCHANGED vars)

Spec == /\ Init /\ [][Next]_vars
        /\ WF_vars(Next)

Termination == <>(pc = "Done")

\* END TRANSLATION
PartialCorrectness == (pc = "Done") => ret = Search(key, data)
=============================================================================
\* Modification History
\* Last modified Tue May 16 16:57:54 EDT 2017 by jeem
\* Created Tue May 16 16:00:46 EDT 2017 by jeem
